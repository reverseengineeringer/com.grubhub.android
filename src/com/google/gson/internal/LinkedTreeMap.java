package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedTreeMap<K, V>.EntrySet entrySet;
  final LinkedTreeMap.Node<K, V> header = new LinkedTreeMap.Node();
  private LinkedTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  LinkedTreeMap.Node<K, V> root;
  int size = 0;
  
  static
  {
    if (!LinkedTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      NATURAL_ORDER = new Comparator()
      {
        public int compare(Comparable paramAnonymousComparable1, Comparable paramAnonymousComparable2)
        {
          return paramAnonymousComparable1.compareTo(paramAnonymousComparable2);
        }
      };
      return;
    }
  }
  
  public LinkedTreeMap()
  {
    this(NATURAL_ORDER);
  }
  
  public LinkedTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      comparator = paramComparator;
      return;
      paramComparator = NATURAL_ORDER;
    }
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private void rebalance(LinkedTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    LinkedTreeMap.Node localNode1;
    LinkedTreeMap.Node localNode2;
    int i;
    int j;
    label39:
    int k;
    LinkedTreeMap.Node localNode3;
    if (paramNode != null)
    {
      localNode1 = left;
      localNode2 = right;
      if (localNode1 == null) {
        break label117;
      }
      i = height;
      if (localNode2 == null) {
        break label122;
      }
      j = height;
      k = i - j;
      if (k != -2) {
        break label172;
      }
      localNode1 = left;
      localNode3 = right;
      if (localNode3 == null) {
        break label128;
      }
      i = height;
      label77:
      if (localNode1 == null) {
        break label133;
      }
      j = height;
      label89:
      i = j - i;
      if ((i != -1) && ((i != 0) || (paramBoolean))) {
        break label139;
      }
      rotateLeft(paramNode);
    }
    for (;;)
    {
      if (!paramBoolean) {
        break label242;
      }
      label116:
      return;
      label117:
      i = 0;
      break;
      label122:
      j = 0;
      break label39;
      label128:
      i = 0;
      break label77;
      label133:
      j = 0;
      break label89;
      label139:
      assert (i == 1);
      rotateRight(localNode2);
      rotateLeft(paramNode);
    }
    label172:
    if (k == 2)
    {
      localNode2 = left;
      localNode3 = right;
      if (localNode3 != null)
      {
        i = height;
        label203:
        if (localNode2 == null) {
          break label255;
        }
        j = height;
        label215:
        i = j - i;
        if ((i != 1) && ((i != 0) || (paramBoolean))) {
          break label261;
        }
        rotateRight(paramNode);
        label238:
        if (paramBoolean) {
          break label292;
        }
      }
    }
    label242:
    label255:
    label261:
    label292:
    label311:
    do
    {
      do
      {
        paramNode = parent;
        break;
        i = 0;
        break label203;
        j = 0;
        break label215;
        assert (i == -1);
        rotateLeft(localNode1);
        rotateRight(paramNode);
        break label238;
        break label116;
        if (k != 0) {
          break label311;
        }
        height = (i + 1);
      } while (!paramBoolean);
      return;
      assert ((k == -1) || (k == 1));
      height = (Math.max(i, j) + 1);
    } while (paramBoolean);
  }
  
  private void replaceInParent(LinkedTreeMap.Node<K, V> paramNode1, LinkedTreeMap.Node<K, V> paramNode2)
  {
    LinkedTreeMap.Node localNode = parent;
    parent = null;
    if (paramNode2 != null) {
      parent = localNode;
    }
    if (localNode != null)
    {
      if (left == paramNode1)
      {
        left = paramNode2;
        return;
      }
      assert (right == paramNode1);
      right = paramNode2;
      return;
    }
    root = paramNode2;
  }
  
  private void rotateLeft(LinkedTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedTreeMap.Node localNode1 = left;
    LinkedTreeMap.Node localNode2 = right;
    LinkedTreeMap.Node localNode3 = left;
    LinkedTreeMap.Node localNode4 = right;
    right = localNode3;
    if (localNode3 != null) {
      parent = paramNode;
    }
    replaceInParent(paramNode, localNode2);
    left = paramNode;
    parent = localNode2;
    int i;
    if (localNode1 != null)
    {
      i = height;
      if (localNode3 == null) {
        break label135;
      }
    }
    label135:
    for (int j = height;; j = 0)
    {
      height = (Math.max(i, j) + 1);
      j = height;
      i = k;
      if (localNode4 != null) {
        i = height;
      }
      height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private void rotateRight(LinkedTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedTreeMap.Node localNode1 = left;
    LinkedTreeMap.Node localNode2 = right;
    LinkedTreeMap.Node localNode3 = left;
    LinkedTreeMap.Node localNode4 = right;
    left = localNode4;
    if (localNode4 != null) {
      parent = paramNode;
    }
    replaceInParent(paramNode, localNode1);
    right = paramNode;
    parent = localNode1;
    int i;
    if (localNode2 != null)
    {
      i = height;
      if (localNode4 == null) {
        break label135;
      }
    }
    label135:
    for (int j = height;; j = 0)
    {
      height = (Math.max(i, j) + 1);
      j = height;
      i = k;
      if (localNode3 != null) {
        i = height;
      }
      height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private Object writeReplace()
    throws ObjectStreamException
  {
    return new LinkedHashMap(this);
  }
  
  public void clear()
  {
    root = null;
    size = 0;
    modCount += 1;
    LinkedTreeMap.Node localNode = header;
    prev = localNode;
    next = localNode;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return findByObject(paramObject) != null;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    LinkedTreeMap.EntrySet localEntrySet = entrySet;
    if (localEntrySet != null) {
      return localEntrySet;
    }
    localEntrySet = new LinkedTreeMap.EntrySet(this);
    entrySet = localEntrySet;
    return localEntrySet;
  }
  
  LinkedTreeMap.Node<K, V> find(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = comparator;
    Object localObject1 = root;
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label69;
        }
      }
      label60:
      label69:
      for (i = localComparable.compareTo(key);; i = localComparator.compare(paramK, key))
      {
        if (i != 0) {
          break label86;
        }
        localObject2 = localObject1;
        return (LinkedTreeMap.Node<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label86:
      if (i < 0)
      {
        localObject2 = left;
        label97:
        if (localObject2 != null) {
          break label179;
        }
      }
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (!paramBoolean) {
        break label60;
      }
      localObject2 = header;
      if (localObject1 == null)
      {
        if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable)))
        {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
          localObject2 = right;
          break label97;
          label179:
          localObject1 = localObject2;
          break;
        }
        paramK = new LinkedTreeMap.Node((LinkedTreeMap.Node)localObject1, paramK, (LinkedTreeMap.Node)localObject2, prev);
        root = paramK;
        size += 1;
        modCount += 1;
        return paramK;
      }
      paramK = new LinkedTreeMap.Node((LinkedTreeMap.Node)localObject1, paramK, (LinkedTreeMap.Node)localObject2, prev);
      if (i < 0) {
        left = paramK;
      }
      for (;;)
      {
        rebalance((LinkedTreeMap.Node)localObject1, true);
        break;
        right = paramK;
      }
      i = 0;
    }
  }
  
  LinkedTreeMap.Node<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    LinkedTreeMap.Node localNode = findByObject(paramEntry.getKey());
    if ((localNode != null) && (equal(value, paramEntry.getValue()))) {}
    for (int i = 1; i != 0; i = 0) {
      return localNode;
    }
    return null;
  }
  
  LinkedTreeMap.Node<K, V> findByObject(Object paramObject)
  {
    LinkedTreeMap.Node localNode = null;
    if (paramObject != null) {}
    try
    {
      localNode = find(paramObject, false);
      return localNode;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  public V get(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      return (V)value;
    }
    return null;
  }
  
  public Set<K> keySet()
  {
    LinkedTreeMap.KeySet localKeySet = keySet;
    if (localKeySet != null) {
      return localKeySet;
    }
    localKeySet = new LinkedTreeMap.KeySet(this);
    keySet = localKeySet;
    return localKeySet;
  }
  
  public V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = find(paramK, true);
    Object localObject = value;
    value = paramV;
    return (V)localObject;
  }
  
  public V remove(Object paramObject)
  {
    paramObject = removeInternalByKey(paramObject);
    if (paramObject != null) {
      return (V)value;
    }
    return null;
  }
  
  void removeInternal(LinkedTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    int j = 0;
    if (paramBoolean)
    {
      prev.next = next;
      next.prev = prev;
    }
    LinkedTreeMap.Node localNode1 = left;
    LinkedTreeMap.Node localNode2 = right;
    LinkedTreeMap.Node localNode3 = parent;
    int i;
    if ((localNode1 != null) && (localNode2 != null)) {
      if (height > height)
      {
        localNode1 = localNode1.last();
        removeInternal(localNode1, false);
        localNode2 = left;
        if (localNode2 == null) {
          break label262;
        }
        i = height;
        left = localNode2;
        parent = localNode1;
        left = null;
      }
    }
    for (;;)
    {
      localNode2 = right;
      if (localNode2 != null)
      {
        j = height;
        right = localNode2;
        parent = localNode1;
        right = null;
      }
      height = (Math.max(i, j) + 1);
      replaceInParent(paramNode, localNode1);
      return;
      localNode1 = localNode2.first();
      break;
      if (localNode1 != null)
      {
        replaceInParent(paramNode, localNode1);
        left = null;
      }
      for (;;)
      {
        rebalance(localNode3, false);
        size -= 1;
        modCount += 1;
        return;
        if (localNode2 != null)
        {
          replaceInParent(paramNode, localNode2);
          right = null;
        }
        else
        {
          replaceInParent(paramNode, null);
        }
      }
      label262:
      i = 0;
    }
  }
  
  LinkedTreeMap.Node<K, V> removeInternalByKey(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      removeInternal((LinkedTreeMap.Node)paramObject, true);
    }
    return (LinkedTreeMap.Node<K, V>)paramObject;
  }
  
  public int size()
  {
    return size;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */