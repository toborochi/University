    public static boolean palindrome(List L) {
        Iterator i = L.iterator();
        ListIterator i2 = L.listIterator(L.size());
        while (i.hasNext()) {
            if (!i.next().equals(i2.previous())) {
                return false;
            }
        }
        return true;
    }