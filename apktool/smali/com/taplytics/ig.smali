.class public Lcom/taplytics/ig;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/hn;


# direct methods
.method public constructor <init>(Lcom/taplytics/hn;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taplytics/ig;->a:Lcom/taplytics/hn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 128
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/taplytics/ik;

    .line 129
    new-instance v1, Lcom/android/volley/toolbox/JsonArrayRequest;

    const-string v2, "https://api.github.com/repos/taplytics/taplytics-android-sdk/releases"

    new-instance v3, Lcom/taplytics/ih;

    invoke-direct {v3, p0, v0}, Lcom/taplytics/ih;-><init>(Lcom/taplytics/ig;Lcom/taplytics/ik;)V

    new-instance v4, Lcom/taplytics/ii;

    invoke-direct {v4, p0, v0}, Lcom/taplytics/ii;-><init>(Lcom/taplytics/ig;Lcom/taplytics/ik;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 146
    const-string v0, "github_release"

    invoke-virtual {v1, v0}, Lcom/android/volley/toolbox/JsonArrayRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 147
    iget-object v0, p0, Lcom/taplytics/ig;->a:Lcom/taplytics/hn;

    invoke-static {v0}, Lcom/taplytics/hn;->a(Lcom/taplytics/hn;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/taplytics/ig;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
