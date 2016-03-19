.class Lio/card/payment/FixedLengthValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/card/payment/Validator;


# instance fields
.field public requiredLength:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lio/card/payment/FixedLengthValidator;->requiredLength:I

    .line 21
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/FixedLengthValidator;->value:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 59
    if-lez p3, :cond_0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    add-int/2addr v0, p6

    sub-int/2addr v0, p5

    add-int/2addr v0, p3

    iget v1, p0, Lio/card/payment/FixedLengthValidator;->requiredLength:I

    if-le v0, v1, :cond_0

    .line 60
    const-string v0, ""

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/card/payment/FixedLengthValidator;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFullLength()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lio/card/payment/FixedLengthValidator;->isValid()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lio/card/payment/FixedLengthValidator;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/FixedLengthValidator;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lio/card/payment/FixedLengthValidator;->requiredLength:I

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
