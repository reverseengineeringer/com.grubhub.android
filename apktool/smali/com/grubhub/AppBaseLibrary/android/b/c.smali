.class public Lcom/grubhub/AppBaseLibrary/android/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/b/c;->a:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/b/c;->b:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
