using System;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

public struct Received
{
    public IPEndPoint Sender;
    public string Message;
}

abstract class UdpBase
{
    protected UdpClient Client;

    protected UdpBase()
    {
        Client = new UdpClient();
    }

    public async Task<Received> Receive()
    {
        var result = await Client.ReceiveAsync();
        return new Received()
        {
            Message = Encoding.ASCII.GetString(result.Buffer, 0, result.Buffer.Length),
            Sender = result.RemoteEndPoint
        };
    }
}

//Server
class UdpListener : UdpBase
{
    private IPEndPoint _listenOn;

    public UdpListener() : this(new IPEndPoint(IPAddress.Any, 32123))
    {
    }

    public UdpListener(IPEndPoint endpoint)
    {
        _listenOn = endpoint;
        Client = new UdpClient(_listenOn);
    }

    public void Reply(string message, IPEndPoint endpoint)
    {
        var datagram = Encoding.ASCII.GetBytes(message);
        Client.Send(datagram, datagram.Length, endpoint);
    }

}

//Client
class UdpUser : UdpBase
{
    private UdpUser() { }

    public static byte[] StringToByteArray(string hex)
    {
        return Enumerable.Range(0, hex.Length)
                         .Where(x => x % 2 == 0)
                         .Select(x => Convert.ToByte(hex.Substring(x, 2), 16))
                         .ToArray();
    }

    public static UdpUser ConnectTo(string hostname, int port)
    {
        var connection = new UdpUser();
        connection.Client.Connect(hostname, port);
        return connection;
    }

    public void Send(string message)
    {
        var datagram = StringToByteArray(message);
        Client.Send(datagram, datagram.Length);
    }

}

class Program
{

    static void automaticSender()
    {
        var server = new UdpListener();
        while (true)
        {
            Thread.Sleep(1000);
            //create a new server
            

            //start listening for messages and copy the messages back to the client
            Task.Factory.StartNew(async () =>
            {
                while (true)
                {
                    var received = await server.Receive();
                    server.Reply("copy " + received.Message, received.Sender);
                    if (received.Message == "quit")
                        break;
                }
            });

            //create a new client
            var client = UdpUser.ConnectTo("192.168.0.15", 10208);

            //wait for reply messages from server and send them to console 
            Task.Factory.StartNew(async () =>
            {
                while (true)
                {
                    try
                    {
                        var received = await client.Receive();
                        Console.Write(received.Message+" - ");
                        Console.WriteLine("Recibido: "+System.DateTime.Now.TimeOfDay.ToString());
                        if (received.Message.Contains("quit"))
                            break;
                    }
                    catch (Exception ex)
                    {
                        Debug.Write(ex);
                    }
                }
            });

            Console.Write("Enviado: "+System.DateTime.Now.TimeOfDay.ToString()+" - ");
            //type ahead :-)
            string read = "830513631218670101010200755E3083F55E3083F4F567A8AEDA5B98EB00009E670000000800220A200002FFC7000903001E1E100000002FB1004240660000108100000000000000000000000000000000000000000000008F02E0022400144FA8000032EE0000DE900000000300002A30";
            client.Send(read);

        }
    }

    static void Main(string[] args)
    {
        Thread t = new Thread(automaticSender);
        t.Start();
    }
}
