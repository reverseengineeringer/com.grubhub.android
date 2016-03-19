.class Lio/card/payment/NonEmptyValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/card/payment/Validator;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/NonEmptyValidator;->value:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/card/payment/NonEmptyValidator;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFullLength()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lio/card/payment/NonEmptyValidator;->isValid()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/card/payment/NonEmptyValidator;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/NonEmptyValidator;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
