.class public Lcom/urbanairship/http/RequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/urbanairship/http/Request;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/http/Request;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method
