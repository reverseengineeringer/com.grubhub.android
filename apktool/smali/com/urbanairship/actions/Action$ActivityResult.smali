.class public Lcom/urbanairship/actions/Action$ActivityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private intent:Landroid/content/Intent;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/actions/Action$ActivityResult;->resultCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/Action$ActivityResult;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/Action$ActivityResult;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setResult(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/urbanairship/actions/Action$ActivityResult;->resultCode:I

    .line 209
    iput-object p2, p0, Lcom/urbanairship/actions/Action$ActivityResult;->intent:Landroid/content/Intent;

    .line 210
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/urbanairship/actions/Action$ActivityResult;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/urbanairship/actions/Action$ActivityResult;->resultCode:I

    return v0
.end method
