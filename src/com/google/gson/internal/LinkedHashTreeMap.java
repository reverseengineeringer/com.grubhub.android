package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedHashTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedHashTreeMap<K, V>.EntrySet entrySet;
  final LinkedHashTreeMap.Node<K, V> header;
  private LinkedHashTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  int size = 0;
  LinkedHashTreeMap.Node<K, V>[] table;
  int threshold;
  
  static
  {
    if (!LinkedHashTreeMap.class.desiredAssertionStatus()) {}
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
  
  public LinkedHashTreeMap()
  {
    this(NATURAL_ORDER);
  }
  
  public LinkedHashTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      comparator = paramComparator;
      header = new LinkedHashTreeMap.Node();
      table = new LinkedHashTreeMap.Node[16];
      threshold = (table.length / 2 + table.length / 4);
      return;
      paramComparator = NATURAL_ORDER;
    }
  }
  
  private void doubleCapacity()
  {
    table = doubleCapacity(table);
    threshold = (table.length / 2 + table.length / 4);
  }
  
  static <K, V> LinkedHashTreeMap.Node<K, V>[] doubleCapacity(LinkedHashTreeMap.Node<K, V>[] paramArrayOfNode)
  {
    int m = paramArrayOfNode.length;
    LinkedHashTreeMap.Node[] arrayOfNode = new LinkedHashTreeMap.Node[m * 2];
    LinkedHashTreeMap.AvlIterator localAvlIterator = new LinkedHashTreeMap.AvlIterator();
    LinkedHashTreeMap.AvlBuilder localAvlBuilder1 = new LinkedHashTreeMap.AvlBuilder();
    LinkedHashTreeMap.AvlBuilder localAvlBuilder2 = new LinkedHashTreeMap.AvlBuilder();
    int i = 0;
    while (i < m)
    {
      Object localObject = paramArrayOfNode[i];
      if (localObject == null)
      {
        i += 1;
      }
      else
      {
        localAvlIterator.reset((LinkedHashTreeMap.Node)localObject);
        int k = 0;
        int j = 0;
        for (;;)
        {
          LinkedHashTreeMap.Node localNode = localAvlIterator.next();
          if (localNode == null) {
            break;
          }
          if ((hash & m) == 0) {
            j += 1;
          } else {
            k += 1;
          }
        }
        localAvlBuilder1.reset(j);
        localAvlBuilder2.reset(k);
        localAvlIterator.reset((LinkedHashTreeMap.Node)localObject);
        for (;;)
        {
          localObject = localAvlIterator.next();
          if (localObject == null) {
            break;
          }
          if ((hash & m) == 0) {
            localAvlBuilder1.add((LinkedHashTreeMap.Node)localObject);
          } else {
            localAvlBuilder2.add((LinkedHashTreeMap.Node)localObject);
          }
        }
        if (j > 0)
        {
          localObject = localAvlBuilder1.root();
          label186:
          arrayOfNode[i] = localObject;
          if (k <= 0) {
            break label221;
          }
        }
        label221:
        for (localObject = localAvlBuilder2.root();; localObject = null)
        {
          arrayOfNode[(i + m)] = localObject;
          break;
          localObject = null;
          break label186;
        }
      }
    }
    return arrayOfNode;
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private void rebalance(LinkedHashTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    LinkedHashTreeMap.Node localNode1;
    LinkedHashTreeMap.Node localNode2;
    int i;
    int j;
    label39:
    int k;
    LinkedHashTreeMap.Node localNode3;
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
  
  private void replaceInParent(LinkedHashTreeMap.Node<K, V> paramNode1, LinkedHashTreeMap.Node<K, V> paramNode2)
  {
    LinkedHashTreeMap.Node localNode = parent;
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
    int i = hash;
    int j = table.length;
    table[(i & j - 1)] = paramNode2;
  }
  
  private void rotateLeft(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = left;
    LinkedHashTreeMap.Node localNode4 = right;
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
  
  private void rotateRight(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = left;
    LinkedHashTreeMap.Node localNode4 = right;
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
  
  private static int secondaryHash(int paramInt)
  {
    paramInt = paramInt >>> 20 ^ paramInt >>> 12 ^ paramInt;
    return paramInt >>> 4 ^ paramInt >>> 7 ^ paramInt;
  }
  
  private Object writeReplace()
    throws ObjectStreamException
  {
    return new LinkedHashMap(this);
  }
  
  public void clear()
  {
    Arrays.fill(table, null);
    size = 0;
    modCount += 1;
    LinkedHashTreeMap.Node localNode2 = header;
    LinkedHashTreeMap.Node localNode1;
    for (Object localObject = next; localObject != localNode2; localObject = localNode1)
    {
      localNode1 = next;
      prev = null;
      next = null;
    }
    prev = localNode2;
    next = localNode2;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return findByObject(paramObject) != null;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    LinkedHashTreeMap.EntrySet localEntrySet = entrySet;
    if (localEntrySet != null) {
      return localEntrySet;
    }
    localEntrySet = new LinkedHashTreeMap.EntrySet(this);
    entrySet = localEntrySet;
    return localEntrySet;
  }
  
  LinkedHashTreeMap.Node<K, V> find(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = comparator;
    LinkedHashTreeMap.Node[] arrayOfNode = table;
    int j = secondaryHash(paramK.hashCode());
    int k = j & arrayOfNode.length - 1;
    Object localObject1 = arrayOfNode[k];
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label95;
        }
      }
      label86:
      label95:
      for (i = localComparable.compareTo(key);; i = localComparator.compare(paramK, key))
      {
        if (i != 0) {
          break label112;
        }
        localObject2 = localObject1;
        return (LinkedHashTreeMap.Node<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label112:
      if (i < 0)
      {
        localObject2 = left;
        label123:
        if (localObject2 != null) {
          break label205;
        }
      }
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (!paramBoolean) {
        break label86;
      }
      localObject2 = header;
      if (localObject1 == null)
      {
        if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable)))
        {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
          localObject2 = right;
          break label123;
          label205:
          localObject1 = localObject2;
          break;
        }
        paramK = new LinkedHashTreeMap.Node((LinkedHashTreeMap.Node)localObject1, paramK, j, (LinkedHashTreeMap.Node)localObject2, prev);
        arrayOfNode[k] = paramK;
        i = size;
        size = (i + 1);
        if (i > threshold) {
          doubleCapacity();
        }
        modCount += 1;
        return paramK;
      }
      paramK = new LinkedHashTreeMap.Node((LinkedHashTreeMap.Node)localObject1, paramK, j, (LinkedHashTreeMap.Node)localObject2, prev);
      if (i < 0) {
        left = paramK;
      }
      for (;;)
      {
        rebalance((LinkedHashTreeMap.Node)localObject1, true);
        break;
        right = paramK;
      }
      i = 0;
    }
  }
  
  LinkedHashTreeMap.Node<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    LinkedHashTreeMap.Node localNode = findByObject(paramEntry.getKey());
    if ((localNode != null) && (equal(value, paramEntry.getValue()))) {}
    for (int i = 1; i != 0; i = 0) {
      return localNode;
    }
    return null;
  }
  
  LinkedHashTreeMap.Node<K, V> findByObject(Object paramObject)
  {
    LinkedHashTreeMap.Node localNode = null;
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
    LinkedHashTreeMap.KeySet localKeySet = keySet;
    if (localKeySet != null) {
      return localKeySet;
    }
    localKeySet = new LinkedHashTreeMap.KeySet(this);
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
  
  void removeInternal(LinkedHashTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    int j = 0;
    if (paramBoolean)
    {
      prev.next = next;
      next.prev = prev;
      prev = null;
      next = null;
    }
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = parent;
    int i;
    if ((localNode1 != null) && (localNode2 != null)) {
      if (height > height)
      {
        localNode1 = localNode1.last();
        removeInternal(localNode1, false);
        localNode2 = left;
        if (localNode2 == null) {
          break label272;
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
      label272:
      i = 0;
    }
  }
  
  LinkedHashTreeMap.Node<K, V> removeInternalByKey(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      removeInternal((LinkedHashTreeMap.Node)paramObject, true);
    }
    return (LinkedHashTreeMap.Node<K, V>)paramObject;
  }
  
  public int size()
  {
    return size;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.LinkedHashTreeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */