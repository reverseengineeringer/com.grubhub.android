.class public final Lio/card/payment/DataEntryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityTitleTextView:Landroid/widget/TextView;

.field private autoAcceptDone:Z

.field private cancelBtn:Landroid/widget/Button;

.field private capture:Lio/card/payment/CreditCard;

.field private cardView:Landroid/widget/ImageView;

.field private cvvEdit:Landroid/widget/EditText;

.field private cvvValidator:Lio/card/payment/Validator;

.field private defaultTextColor:I

.field private doneBtn:Landroid/widget/Button;

.field private editTextIdCounter:I

.field private expiryEdit:Landroid/widget/EditText;

.field private expiryValidator:Lio/card/payment/Validator;

.field private labelLeftPadding:Ljava/lang/String;

.field private numberEdit:Landroid/widget/EditText;

.field private numberValidator:Lio/card/payment/Validator;

.field private postalCodeEdit:Landroid/widget/EditText;

.field private postalCodeValidator:Lio/card/payment/Validator;

.field private useApplicationTheme:Z

.field private viewIdCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    .line 61
    const/16 v0, 0x64

    iput v0, p0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/DataEntryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/card/payment/DataEntryActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->completed()V

    return-void
.end method

.method private advanceToNextEmptyField()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 442
    const/16 v0, 0x64

    .line 444
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lio/card/payment/DataEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 446
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private completed()V
    .locals 6

    .prologue
    .line 402
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lio/card/payment/CreditCard;

    invoke-direct {v0}, Lio/card/payment/CreditCard;-><init>()V

    iput-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    .line 405
    :cond_0
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 406
    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    check-cast v0, Lio/card/payment/ExpiryValidator;

    iget v0, v0, Lio/card/payment/ExpiryValidator;->month:I

    iput v0, v1, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 407
    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    check-cast v0, Lio/card/payment/ExpiryValidator;

    iget v0, v0, Lio/card/payment/ExpiryValidator;->year:I

    iput v0, v1, Lio/card/payment/CreditCard;->expiryYear:I

    .line 410
    :cond_1
    new-instance v0, Lio/card/payment/CreditCard;

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v2, v2, Lio/card/payment/CreditCard;->expiryMonth:I

    iget-object v3, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v3, v3, Lio/card/payment/CreditCard;->expiryYear:I

    iget-object v4, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {v4}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v5}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lio/card/payment/CreditCard;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 413
    const-string v2, "io.card.payment.scanResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_CARD_INFO:I

    invoke-virtual {p0, v0, v1}, Lio/card/payment/DataEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 415
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->finish()V

    .line 416
    return-void
.end method

.method private setDefaultColor(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_0

    .line 529
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method private validateAndEnableDoneButtonIfValid()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting doneBtn.enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->autoAcceptDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->completed()V

    .line 465
    :cond_0
    return-void

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 471
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    sget v1, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 482
    :goto_0
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object v1

    .line 484
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    check-cast v0, Lio/card/payment/FixedLengthValidator;

    .line 485
    invoke-virtual {v1}, Lio/card/payment/CardType;->cvvLength()I

    move-result v1

    .line 486
    iput v1, v0, Lio/card/payment/FixedLengthValidator;->requiredLength:I

    .line 487
    iget-object v2, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    const-string v0, "1234"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    :goto_2
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->validateAndEnableDoneButtonIfValid()V

    .line 525
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    .line 476
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    goto :goto_0

    .line 487
    :cond_3
    const-string v0, "123"

    goto :goto_1

    .line 489
    :cond_4
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 490
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 492
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    sget v1, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 494
    :cond_5
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    .line 495
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto :goto_2

    .line 498
    :cond_6
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    goto :goto_2

    .line 500
    :cond_7
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 501
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 503
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    sget v1, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 505
    :cond_8
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    .line 506
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto :goto_2

    .line 509
    :cond_9
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    goto :goto_2

    .line 511
    :cond_a
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 512
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 513
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 514
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    sget v1, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_2

    .line 516
    :cond_b
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    .line 517
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto/16 :goto_2

    .line 520
    :cond_c
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lio/card/payment/DataEntryActivity;->setDefaultColor(Landroid/widget/EditText;)V

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22

    .prologue
    .line 86
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    .line 91
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->onBackPressed()V

    .line 399
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "io.card.payment.keepApplicationTheme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    .line 96
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lio/card/payment/ui/ActivityHelper;->setActivityTheme(Landroid/app/Activity;Z)V

    .line 98
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    .line 100
    invoke-static {}, Lio/card/payment/ui/ActivityHelper;->holoSupported()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "12dip"

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lio/card/payment/i18n/LocalizedStrings;->setLanguage(Landroid/content/Intent;)V

    .line 105
    const-string v4, "4dip"

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixelsInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    .line 107
    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 108
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v4, :cond_1

    .line 109
    sget v4, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 111
    :cond_1
    new-instance v4, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 112
    move-object/from16 v0, p0

    iget v5, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setId(I)V

    .line 113
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x2

    invoke-direct {v8, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v5, 0xa

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    invoke-virtual {v7, v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    const/4 v5, -0x1

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v5, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 122
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v11, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "io.card.payment.scanResult"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lio/card/payment/CreditCard;

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "debug_autoAcceptResult"

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lio/card/payment/DataEntryActivity;->autoAcceptDone:Z

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    if-eqz v4, :cond_c

    .line 132
    new-instance v4, Lio/card/payment/CardNumberValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v5, v5, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-direct {v4, v5}, Lio/card/payment/CardNumberValidator;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    .line 134
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    .line 136
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v12, -0x2

    invoke-direct {v4, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 139
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    sget-object v12, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    invoke-virtual {v10, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "8dip"

    invoke-static {v4, v5, v12, v13, v14}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_2
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    const/4 v4, 0x0

    const-string v5, "4dip"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v4, v5, v14, v15}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "io.card.payment.requireExpiry"

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 197
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "io.card.payment.requireCVV"

    const/4 v15, 0x0

    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 198
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "io.card.payment.requirePostalCode"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 200
    if-eqz v14, :cond_11

    .line 201
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 204
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 208
    sget v18, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    :cond_2
    sget-object v18, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    invoke-static/range {v18 .. v18}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v18, -0x2

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 215
    new-instance v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setId(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x1010040

    invoke-virtual/range {v17 .. v19}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setInputType(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    sget-object v18, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    invoke-static/range {v18 .. v18}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 225
    new-instance v17, Lio/card/payment/ExpiryValidator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lio/card/payment/CreditCard;->expiryYear:I

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lio/card/payment/ExpiryValidator;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    .line 229
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/text/method/DateKeyListener;

    invoke-direct/range {v20 .. v20}, Landroid/text/method/DateKeyListener;-><init>()V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 237
    invoke-virtual {v12, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v15, :cond_4

    if-eqz v16, :cond_10

    :cond_4
    const-string v4, "4dip"

    :goto_4
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v5, v0, v1, v4, v2}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_5
    if-eqz v15, :cond_14

    .line 245
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 248
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 252
    sget v18, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v4, v0, v1, v2, v3}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v18, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    invoke-static/range {v18 .. v18}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/16 v18, -0x2

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 259
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget v0, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x1010040

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const-string v18, "123"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v4, 0x4

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v4}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lio/card/payment/CardType;->cvvLength()I

    move-result v4

    .line 272
    :cond_6
    new-instance v18, Lio/card/payment/FixedLengthValidator;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lio/card/payment/FixedLengthValidator;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/text/method/DigitsKeyListener;

    invoke-direct/range {v20 .. v20}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 278
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    if-eqz v14, :cond_12

    const-string v4, "4dip"

    move-object v5, v4

    :goto_6
    const/16 v18, 0x0

    if-eqz v16, :cond_13

    const-string v4, "4dip"

    :goto_7
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v5, v1, v4, v2}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_8
    if-eqz v16, :cond_16

    .line 286
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 289
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 291
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 293
    sget v17, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v20}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v17, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    invoke-static/range {v17 .. v17}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const/16 v17, -0x2

    const/16 v18, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 301
    new-instance v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setId(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x1010040

    invoke-virtual/range {v16 .. v18}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setInputType(I)V

    .line 309
    new-instance v16, Lio/card/payment/MaxLengthValidator;

    const/16 v17, 0x14

    invoke-direct/range {v16 .. v17}, Lio/card/payment/MaxLengthValidator;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    const/16 v18, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 315
    invoke-virtual {v12, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    if-nez v14, :cond_8

    if-eqz v15, :cond_15

    :cond_8
    const-string v4, "4dip"

    :goto_9
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v5, v4, v15, v0, v1}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_a
    invoke-virtual {v10, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const-string v4, "16dip"

    const-string v5, "20dip"

    const-string v9, "16dip"

    const-string v11, "20dip"

    invoke-static {v10, v4, v5, v9, v11}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 329
    move-object/from16 v0, p0

    iget v5, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    add-int/lit8 v9, v5, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 330
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 332
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 333
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v6, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 334
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 336
    const/4 v6, 0x2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v9

    invoke-virtual {v8, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 338
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    .line 339
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 342
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    sget-object v9, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    invoke-static {v9}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    new-instance v9, Lio/card/payment/DataEntryActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lio/card/payment/DataEntryActivity$1;-><init>(Lio/card/payment/DataEntryActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v6, v8, v0}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/view/View;ZLandroid/content/Context;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const-string v8, "5dip"

    const/4 v9, 0x0

    const-string v10, "5dip"

    const/4 v11, 0x0

    invoke-static {v6, v8, v9, v10, v11}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const-string v8, "8dip"

    const-string v9, "8dip"

    const-string v10, "4dip"

    const-string v11, "8dip"

    invoke-static {v6, v8, v9, v10, v11}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 358
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    .line 360
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 362
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    sget-object v9, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    invoke-static {v9}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v9, Lio/card/payment/DataEntryActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lio/card/payment/DataEntryActivity$2;-><init>(Lio/card/payment/DataEntryActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v6, v8, v0}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/view/View;ZLandroid/content/Context;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const-string v8, "5dip"

    const/4 v9, 0x0

    const-string v10, "5dip"

    const/4 v11, 0x0

    invoke-static {v6, v8, v9, v10, v11}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const-string v8, "4dip"

    const-string v9, "8dip"

    const-string v10, "8dip"

    const-string v11, "8dip"

    invoke-static {v6, v8, v9, v10, v11}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 378
    invoke-virtual {v7, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-static/range {p0 .. p0}, Lio/card/payment/ui/ActivityHelper;->addActionBarIfSupported(Landroid/app/Activity;)V

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lio/card/payment/DataEntryActivity;->setContentView(Landroid/view/View;)V

    .line 384
    const/4 v4, 0x0

    .line 385
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "io.card.payment.intentSenderIsPayPal"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 386
    if-eqz v5, :cond_9

    .line 387
    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpCNDMzRTRFQ0M2MjQxMUUzOURBQ0E3QTY0NjU3OUI5QiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpCNDMzRTRFREM2MjQxMUUzOURBQ0E3QTY0NjU3OUI5QiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkI0MzNFNEVBQzYyNDExRTM5REFDQTdBNjQ2NTc5QjlCIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkI0MzNFNEVCQzYyNDExRTM5REFDQTdBNjQ2NTc5QjlCIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Eyd0MQAABoFJREFUeNrMWl1MU2cY/oqnQKFYyo8tWCmpxuGi2xq4mftp3XZhZO4n3G0mW7KQBRO9WOLPpZoserMbXXSRGC42NQuBLIJb2JJl2VyWwRDGksVB3QQ7UUsrSKlA//a87i3pSHvOJ/WUvcmTtqen33n/vud93y8VyWRSEMbGxsSmTZvEcsE1K757H/cMJnOTKHAf8PNal4APgWZg3ZEjR4SW0D0pfVMo0PpRIBAojMfjjXhbI3ITelYRsJbXegJ4AXgL+MDr9b66d+9ey6Muqqh9WVFRIdxud3lxcbH3MRlQyCjj9TanvvR4PM81NjZafT7ft/39/Xemp6djsotmlT179ohz586V19bWKkJ/aSwtLT3Y3t7eAql+FK9klbq6OqPT6bQbIXkwwGQwGLbime+1tbXt2L9//8MMyCmFwuEw5et6YI3InzyFVNrpcrm+7evrC4RCofiKIwApB+yAUeRXNs7MzHgSiURpTikEsXIElDwb4IzFYk2gSVOuBlAEalfBAKvsc7UMsKxSChHVlkjop34DNjF5YsMqGJBE8YyjiCb+o2xBgRwLEWuC+4lGKYWIywx5NmAOxfNeU1OTGB8fF4uLi4aJiYnk/Py8nAGkPAoYVeG1q6A8yX3oEIQOSjQaFaOjo6bm5uaI3++XMwDWG2C9yWKxlIvVkUlkwQSKKO3Bt9FQOk+cOHF2y5YtU1IGIP0U5J8dBlhXyYBx4A/AAbQCWw8dOvQbXr8B5mU2scLsY1klA26yAXWsB6Xya8CTsixkZB7OdwSSRH7Ar8BdoImjQPq8AjTIGqBwBc73HqD0+Im9Tw50A6l2wsnXxP85hRaALmAG2AGsS/vOwMUtuwGpQoENrGAjk7WVefb+d0A3P/cdoEqLdJYu0HxJnAvmEaBQBVRam8linWQR+B74FIgCNAF6styXOQJoXQXGOLFr1y4qYkYUElsevf8n8AnwJfAG8LpKlNQjUFNTI1BArDy36i0BoA/4HPgFeBF4F3hmeWmi6szInlO0ByKRyBqdZgBqzGLsxQhv1JTyg0yTB4HnM5ALpc4YU6tmJaaiYdNhjCR+p2ZmBPiBc34UqGfF3+SjloIsuU/UOiljQGoK02qhqehMA/3AMIc5yXRnYG8TLS5cuHAhPDAwEEQ7ELDb7XMcDYXz/WX2vksjevQcn6wBMtMQpcBXwEVeXEnj65QBDwhQPtHZ2VnU1tZWBAPI49uBZ4Gd3K6rph7a6TvoRIfKysqC1dXVUim0TsKA28DHwC3gJU67YlY8yRGkzwo8b4Xyjvr6egc7qIRhlkg9aqOHW1pa/Lt37xbHjh2TioBDw4Aoh/Nn9mQbV22Fw53k93SUaITXzYB1hbPFcElJScfw8PCdhoYGoUqjsViMWmmZFKL0uc73bGf606OxC6I2fTEyMvK12WwWlZWVQrWQgUIJa7mEq7HQPVqcmz2zTjWCNnt7d3f3pdbW1oe6ZTqpW/KyzWYTx48fF9u2bbNK5H+QOdmmU79EdeHS6dOnOzs6OsYwDy/N6lkNqKqqMhw+fFiRbKGn2AB7hoZrJQUuysWNKu1fSJvP+vv7L2LzR8LhsEjPEjUaVdKmHy25x0Y8jpablL7BhEAF7irSZvLo0aMP5ubmNH+sZBhirJIRIBp9GpA5CvfxoDLL3iZXLgwODoZ7e3uDvN51bhfomkiljS4GYF6Ymp2dDTocDnthYWGVBpNEQ6FQH/ARN2/zqap95syZh8c3uchyA2wyKXTq1KmZnp6eua6urgqXy6WWQlTU/OfPn7968uRJf1qR+zeMU1M573Zl2SCvFQF6eGRoaCiAwiIQhQ0aNErpgmyYuOnz+aJ6cO3yCNRqsBB5cNLtdodQ3tGalNVoUC7d/zeKUFivgaIgAwuZNRS6vW/fvgdInzLsAa0iFuXNPqOXAeneoyPtzUL9xJrSbJI6QmA9N2tCKwJAKB8GxJklyrmNSGaIFu263/lzvcTMQAbcwqSXlwjQcHKW51FL2oCSkiKuvj8yFcrMDLTGbZPJNK+7AeDpWdBdL14H8NHEyieXpQ+Vxpter3ejx+NxakUAa0WwZuDy5ctJ/Q4j+T8H165dE1ar3FHogQMHvPhNDzCr8t+IBNa8gjXrHpeuqv+VoBMJOtSSEaSElYueKoVizbtYM6HnucySAQaDQSiK3EkKFDNymqkxlg9rXsGakbwYsIIWOJ6BqdLlBh+hLOhpwD8CDABZh9T1S2qGIgAAAABJRU5ErkJggg=="

    const/16 v5, 0xf0

    move-object/from16 v0, p0

    invoke-static {v4, v0, v5}, Lio/card/payment/ui/ViewUtil;->base64ToBitmap(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 389
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 393
    :cond_9
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v5}, Lio/card/payment/Validator;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/card/payment/DataEntryActivity;->afterTextChanged(Landroid/text/Editable;)V

    .line 397
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    sget-object v6, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    invoke-static {v6}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "card.io - "

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v7, v4}, Lio/card/payment/ui/ActivityHelper;->setupActionBarIfSupported(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 100
    :cond_b
    const-string v4, "2dip"

    goto/16 :goto_1

    .line 149
    :cond_c
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v4, :cond_d

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    sget v5, Lio/card/payment/ui/Appearance;->PAY_BLUE_COLOR:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "8dip"

    invoke-static {v4, v5, v12, v13, v14}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/4 v12, -0x2

    invoke-static {v4, v5, v12}, Lio/card/payment/ui/ViewUtil;->setDimensions(Landroid/view/View;II)V

    .line 160
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    const/4 v5, 0x0

    const-string v12, "4dip"

    const/4 v13, 0x0

    const-string v14, "4dip"

    invoke-static {v4, v5, v12, v13, v14}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v5, v12, v13, v14, v15}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v12, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    invoke-static {v12}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v12, :cond_e

    .line 168
    sget v12, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    :cond_e
    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-virtual {v4, v5, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 172
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget v12, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setId(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v12, 0x6

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x1010040

    invoke-virtual {v5, v12, v13}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const-string v12, "1234 5678 1234 5678"

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v5, Lio/card/payment/CardNumberValidator;

    invoke-direct {v5}, Lio/card/payment/CardNumberValidator;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    new-instance v14, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v14}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    aput-object v14, v12, v13

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-virtual {v4, v5, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 187
    const/4 v5, -0x1

    const/4 v12, -0x1

    invoke-virtual {v10, v4, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_2

    .line 227
    :cond_f
    new-instance v17, Lio/card/payment/ExpiryValidator;

    invoke-direct/range {v17 .. v17}, Lio/card/payment/ExpiryValidator;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    goto/16 :goto_3

    .line 238
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 241
    :cond_11
    new-instance v4, Lio/card/payment/AlwaysValid;

    invoke-direct {v4}, Lio/card/payment/AlwaysValid;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    goto/16 :goto_5

    .line 279
    :cond_12
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_6

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 282
    :cond_14
    new-instance v4, Lio/card/payment/AlwaysValid;

    invoke-direct {v4}, Lio/card/payment/AlwaysValid;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    goto/16 :goto_8

    .line 316
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 319
    :cond_16
    new-instance v4, Lio/card/payment/AlwaysValid;

    invoke-direct {v4}, Lio/card/payment/AlwaysValid;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    goto/16 :goto_a
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 421
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 425
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->validateAndEnableDoneButtonIfValid()V

    .line 427
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 433
    :goto_0
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 438
    :cond_1
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->TAG:Ljava/lang/String;

    const-string v1, "ready for manual entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 430
    :cond_2
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
