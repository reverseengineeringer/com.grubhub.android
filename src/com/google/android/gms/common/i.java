package com.google.android.gms.common;

import java.util.HashSet;
import java.util.Set;

class i
{
  static final j[] a = { av.a[0], aw.a[0], ap.a[0], cd.a[0], r.a[0], bz.a[0], aq.a[0], w.a[0], cc.a[0], ca.a[0], ao.a[0], ah.a[0], as.a[0], k.a[0], ag.a[0], at.a[0], bm.a[0], v.a[0], bg.a[0], bh.a[0], bd.a[0], q.a[0], aa.a[0], y.a[0], z.a[0], bf.a[0], bq.a[0], o.a[0], p.a[0], am.a[0], ad.a[0], bt.a[0], bt.a[1], l.a[0], ck.a[0], br.a[0], bo.a[0], bk.a[0], ac.a[0], ba.a[0], ba.a[1], x.a[0], ab.a[0], n.a[0], cf.a[0], u.a[0], ci.a[0], af.a[0], bi.a[0], bj.a[0], al.a[0], au.a[0], bn.a[0], ay.a[0], ar.a[0], aj.a[0], ce.a[0], s.a[0], ax.a[0], bu.a[0], ch.a[0], t.a[0], an.a[0], az.a[0], bv.a[0], m.a[0], ae.a[0], be.a[0], cj.a[0], bp.a[0], bc.a[0], bs.a[0], ai.a[0], bb.a[0], by.a[0], cb.a[0], bx.a[0], cg.a[0] };
  static final j[] b = a(new j[][] { av.a, aw.a, bw.a, ap.a, cd.a, r.a, bz.a, aq.a, w.a, cc.a, ca.a, ao.a, ah.a, as.a, k.a, ag.a, at.a, bm.a, v.a, bg.a, bh.a, bd.a, q.a, aa.a, y.a, z.a, bf.a, bq.a, o.a, p.a, am.a, ad.a, bt.a, l.a, ck.a, br.a, bo.a, bk.a, ac.a, ba.a, x.a, ab.a, n.a, cf.a, u.a, ci.a, af.a, bi.a, bj.a, al.a, au.a, bn.a, ay.a, ar.a, aj.a, ce.a, s.a, ax.a, bu.a, ch.a, t.a, an.a, az.a, bv.a, m.a, ae.a, be.a, cj.a, bp.a, bc.a, bs.a, ai.a, bb.a, by.a, cb.a, bx.a, cg.a });
  private static Set<j> c;
  private static Set<j> d;
  
  static Set<j> a()
  {
    if (c == null) {
      c = a(b);
    }
    return c;
  }
  
  private static Set<j> a(j[] paramArrayOfj)
  {
    HashSet localHashSet = new HashSet(paramArrayOfj.length);
    int j = paramArrayOfj.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramArrayOfj[i]);
      i += 1;
    }
    return localHashSet;
  }
  
  static j[] a(j[]... paramVarArgs)
  {
    int k = paramVarArgs.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    j[] arrayOfj1 = new j[j];
    int m = paramVarArgs.length;
    j = 0;
    i = 0;
    while (j < m)
    {
      j[] arrayOfj2 = paramVarArgs[j];
      k = 0;
      while (k < arrayOfj2.length)
      {
        arrayOfj1[i] = arrayOfj2[k];
        k += 1;
        i += 1;
      }
      j += 1;
    }
    return arrayOfj1;
  }
  
  static Set<j> b()
  {
    if (d == null) {
      d = a(a);
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */