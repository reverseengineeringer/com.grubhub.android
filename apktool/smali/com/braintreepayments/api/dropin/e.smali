.class public Lcom/braintreepayments/api/dropin/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/braintreepayments/api/dropin/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/braintreepayments/api/dropin/d;

    invoke-direct {v0}, Lcom/braintreepayments/api/dropin/d;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/e;->a:Lcom/braintreepayments/api/dropin/d;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lcom/braintreepayments/api/dropin/d;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/e;->a:Lcom/braintreepayments/api/dropin/d;

    return-object v0
.end method
