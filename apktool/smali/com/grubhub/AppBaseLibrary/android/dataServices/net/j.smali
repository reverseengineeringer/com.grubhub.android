.class abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/String;

.field final synthetic f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;)V
    .locals 0

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;)V
    .locals 0

    .prologue
    .line 2435
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2444
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;->e:Ljava/lang/String;

    .line 2445
    return-void
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
