.class Lcom/facebook/share/internal/e;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field final synthetic i:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 4

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    .line 1589
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1582
    iget-object v0, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/e;->e:Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/e;->f:Ljava/lang/String;

    .line 1584
    iget-object v0, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/e;->g:Ljava/lang/String;

    .line 1585
    iget-object v0, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    .line 1586
    invoke-static {v0}, Lcom/facebook/share/internal/a;->e(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/e;->h:Ljava/lang/String;

    .line 1591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    const-string v1, "fields"

    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1601
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lcom/facebook/ab;->GET:Lcom/facebook/ab;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1600
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/GraphRequest;)V

    .line 1605
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 3

    .prologue
    .line 1609
    .line 1610
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "engagement"

    .line 1609
    invoke-static {v0, v1}, Lcom/facebook/internal/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1612
    if-eqz v0, :cond_0

    .line 1614
    const-string v1, "count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/e;->e:Ljava/lang/String;

    .line 1615
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/e;->e:Ljava/lang/String;

    .line 1619
    const-string v1, "count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/e;->f:Ljava/lang/String;

    .line 1620
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/e;->f:Ljava/lang/String;

    .line 1624
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/e;->g:Ljava/lang/String;

    .line 1625
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/e;->g:Ljava/lang/String;

    .line 1629
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/e;->h:Ljava/lang/String;

    .line 1630
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/e;->h:Ljava/lang/String;

    .line 1634
    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1638
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1639
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/e;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/e;->b:Lcom/facebook/share/widget/d;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1638
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1644
    iget-object v0, p0, Lcom/facebook/share/internal/e;->i:Lcom/facebook/share/internal/a;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    .line 1645
    return-void
.end method
