.class public Lcom/amazon/insights/validate/ValidationError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/lang/Exception;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/insights/validate/ValidationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/insights/validate/ValidationError;->reason:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazon/insights/validate/ValidationError;->exception:Ljava/lang/Exception;

    .line 13
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidationError;->reason:Ljava/lang/String;

    return-object v0
.end method
