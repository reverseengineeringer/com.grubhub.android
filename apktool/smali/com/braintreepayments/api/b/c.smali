.class public Lcom/braintreepayments/api/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/braintreepayments/api/b/c;->a:I

    .line 10
    iput-object p2, p0, Lcom/braintreepayments/api/b/c;->b:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/braintreepayments/api/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
