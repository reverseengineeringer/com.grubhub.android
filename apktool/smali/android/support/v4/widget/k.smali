.class Landroid/support/v4/widget/k;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 2005
    iput-object p1, p0, Landroid/support/v4/widget/k;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 2006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/k;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/view/a/a;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Landroid/support/v4/widget/k;->c:Landroid/graphics/Rect;

    .line 2100
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Landroid/graphics/Rect;)V

    .line 2101
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->b(Landroid/graphics/Rect;)V

    .line 2103
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Landroid/graphics/Rect;)V

    .line 2104
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->d(Landroid/graphics/Rect;)V

    .line 2106
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->c(Z)V

    .line 2107
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->a(Ljava/lang/CharSequence;)V

    .line 2108
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->b(Ljava/lang/CharSequence;)V

    .line 2109
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->c(Ljava/lang/CharSequence;)V

    .line 2111
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->h(Z)V

    .line 2112
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->f(Z)V

    .line 2113
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->a(Z)V

    .line 2114
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->b(Z)V

    .line 2115
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->d(Z)V

    .line 2116
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->e(Z)V

    .line 2117
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->g(Z)V

    .line 2119
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->a(I)V

    .line 2120
    return-void
.end method

.method private a(Landroid/support/v4/view/a/a;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 2082
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2083
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2084
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2085
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2086
    invoke-virtual {p1, v2}, Landroid/support/v4/view/a/a;->b(Landroid/view/View;)V

    .line 2083
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2089
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2010
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 2030
    :goto_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Ljava/lang/CharSequence;)V

    .line 2035
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->a(Z)V

    .line 2036
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->b(Z)V

    .line 2037
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Landroid/support/v4/view/a/b;)Z

    .line 2038
    sget-object v0, Landroid/support/v4/view/a/b;->b:Landroid/support/v4/view/a/b;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Landroid/support/v4/view/a/b;)Z

    .line 2039
    return-void

    .line 2015
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 2017
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 2019
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/View;)V

    .line 2020
    invoke-static {p1}, Landroid/support/v4/view/bp;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2021
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2022
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Landroid/view/View;)V

    .line 2024
    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/k;->a(Landroid/support/v4/view/a/a;Landroid/support/v4/view/a/a;)V

    .line 2025
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->s()V

    .line 2027
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/k;->a(Landroid/support/v4/view/a/a;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 2075
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 2055
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2056
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2057
    iget-object v1, p0, Landroid/support/v4/widget/k;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 2058
    if-eqz v1, :cond_0

    .line 2059
    iget-object v2, p0, Landroid/support/v4/widget/k;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    .line 2060
    iget-object v2, p0, Landroid/support/v4/widget/k;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2061
    if-eqz v1, :cond_0

    .line 2062
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_0
    const/4 v0, 0x1

    .line 2069
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2043
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2045
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2046
    return-void
.end method
