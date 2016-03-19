.class public Lcom/urbanairship/actions/ActionRunRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActionRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lcom/urbanairship/actions/ActionRunRequest;->createRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v0

    return-object v0
.end method
