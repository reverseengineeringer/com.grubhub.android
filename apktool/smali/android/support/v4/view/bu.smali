.class Landroid/support/v4/view/bu;
.super Landroid/support/v4/view/bt;
.source "SourceFile"


# static fields
.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/bu;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Landroid/support/v4/view/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1178
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/cf;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1180
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1157
    invoke-static {p1, p2}, Landroid/support/v4/view/cf;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1161
    invoke-static {p1, p2}, Landroid/support/v4/view/cf;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/support/v4/view/bu;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/bu;->a:Ljava/util/WeakHashMap;

    .line 1211
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/bu;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/dq;

    .line 1212
    if-nez v0, :cond_1

    .line 1213
    new-instance v0, Landroid/support/v4/view/dq;

    invoke-direct {v0, p1}, Landroid/support/v4/view/dq;-><init>(Landroid/view/View;)V

    .line 1214
    iget-object v1, p0, Landroid/support/v4/view/bu;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_1
    return-object v0
.end method
