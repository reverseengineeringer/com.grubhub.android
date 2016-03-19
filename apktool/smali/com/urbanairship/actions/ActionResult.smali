.class public final Lcom/urbanairship/actions/ActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/lang/Exception;

.field private final status:Lcom/urbanairship/actions/ActionResult$Status;

.field private final value:Lcom/urbanairship/actions/ActionValue;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-nez p1, :cond_0

    new-instance p1, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {p1}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionResult;->value:Lcom/urbanairship/actions/ActionValue;

    .line 128
    iput-object p2, p0, Lcom/urbanairship/actions/ActionResult;->exception:Ljava/lang/Exception;

    .line 129
    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, p0, Lcom/urbanairship/actions/ActionResult;->status:Lcom/urbanairship/actions/ActionResult$Status;

    .line 130
    return-void

    .line 129
    :cond_1
    sget-object p3, Lcom/urbanairship/actions/ActionResult$Status;->COMPLETED:Lcom/urbanairship/actions/ActionResult$Status;

    goto :goto_0
.end method

.method public static newEmptyResult()Lcom/urbanairship/actions/ActionResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    sget-object v1, Lcom/urbanairship/actions/ActionResult$Status;->COMPLETED:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, v2, v2, v1}, Lcom/urbanairship/actions/ActionResult;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method static newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    invoke-direct {v0, v1, v1, p0}, Lcom/urbanairship/actions/ActionResult;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method public static newErrorResult(Ljava/lang/Exception;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/ActionResult$Status;->EXECUTION_ERROR:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, v1, p0, v2}, Lcom/urbanairship/actions/ActionResult;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method public static newResult(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/ActionResult$Status;->COMPLETED:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, p0, v1, v2}, Lcom/urbanairship/actions/ActionResult;-><init>(Lcom/urbanairship/actions/ActionValue;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStatus()Lcom/urbanairship/actions/ActionResult$Status;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->status:Lcom/urbanairship/actions/ActionResult$Status;

    return-object v0
.end method

.method public getValue()Lcom/urbanairship/actions/ActionValue;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->value:Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method
