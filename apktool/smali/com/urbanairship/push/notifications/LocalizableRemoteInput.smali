.class public Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowFreeFormInput:Z

.field private final choices:[I

.field private final extras:Landroid/os/Bundle;

.field private final labelId:I

.field private final resultKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I[IZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    .line 48
    iput-object p3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    .line 49
    iput-boolean p4, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->allowFreeFormInput:Z

    .line 50
    iput-object p5, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[IZLandroid/os/Bundle;Lcom/urbanairship/push/notifications/LocalizableRemoteInput$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;-><init>(Ljava/lang/String;I[IZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createRemoteInput(Landroid/content/Context;)Landroid/support/v4/app/cv;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/support/v4/app/cw;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/app/cw;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/cw;->a(Landroid/os/Bundle;)Landroid/support/v4/app/cw;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/cw;->a([Ljava/lang/CharSequence;)Landroid/support/v4/app/cw;

    .line 110
    :cond_1
    iget v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    if-ltz v0, :cond_2

    .line 111
    iget v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/cw;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/cw;

    .line 114
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/cw;->a()Landroid/support/v4/app/cv;

    move-result-object v0

    return-object v0
.end method

.method public getAllowFreeFormInput()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->allowFreeFormInput:Z

    return v0
.end method

.method public getChoices()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    return v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    return-object v0
.end method
