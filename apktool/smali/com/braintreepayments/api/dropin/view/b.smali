.class public final enum Lcom/braintreepayments/api/dropin/view/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/view/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum AMEX:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum DINERS:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum DISCOVER:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum JCB:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum MAESTRO:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum MASTERCARD:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum PAYPAL:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

.field public static final enum VISA:Lcom/braintreepayments/api/dropin/view/b;


# instance fields
.field private mCanonicalName:Ljava/lang/String;

.field private final mDescriptorStringId:I

.field private final mPictureResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/braintreepayments/api/dropin/view/b;

    const-string v1, "VISA"

    sget v3, Lcom/braintreepayments/api/dropin/i;->bt_visa:I

    sget v4, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_visa:I

    const-string v5, "Visa"

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/b;->VISA:Lcom/braintreepayments/api/dropin/view/b;

    .line 25
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "MASTERCARD"

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_mastercard:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_mastercard:I

    const-string v8, "MasterCard"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->MASTERCARD:Lcom/braintreepayments/api/dropin/view/b;

    .line 26
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "DISCOVER"

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_discover:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_discover:I

    const-string v8, "Discover"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->DISCOVER:Lcom/braintreepayments/api/dropin/view/b;

    .line 27
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "AMEX"

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_amex:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_amex:I

    const-string v8, "American Express"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->AMEX:Lcom/braintreepayments/api/dropin/view/b;

    .line 28
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "JCB"

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_jcb:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_jcb:I

    const-string v8, "JCB"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->JCB:Lcom/braintreepayments/api/dropin/view/b;

    .line 29
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "DINERS"

    const/4 v5, 0x5

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_diners:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_diners:I

    const-string v8, "Diners"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->DINERS:Lcom/braintreepayments/api/dropin/view/b;

    .line 30
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "MAESTRO"

    const/4 v5, 0x6

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_maestro:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_maestro:I

    const-string v8, "Maestro"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->MAESTRO:Lcom/braintreepayments/api/dropin/view/b;

    .line 31
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "PAYPAL"

    const/4 v5, 0x7

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_paypal:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_paypal:I

    const-string v8, "PayPal"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->PAYPAL:Lcom/braintreepayments/api/dropin/view/b;

    .line 32
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "ANDROID_PAY"

    const/16 v5, 0x8

    sget v6, Lcom/braintreepayments/api/dropin/i;->bt_android_pay:I

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_android_pay:I

    const-string v8, "Google Wallet"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/b;

    .line 33
    new-instance v3, Lcom/braintreepayments/api/dropin/view/b;

    const-string v4, "UNKNOWN"

    const/16 v5, 0x9

    const/4 v6, -0x1

    sget v7, Lcom/braintreepayments/api/dropin/l;->bt_descriptor_unknown:I

    const-string v8, "unknown"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/b;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/view/b;

    sget-object v1, Lcom/braintreepayments/api/dropin/view/b;->VISA:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/braintreepayments/api/dropin/view/b;->MASTERCARD:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/braintreepayments/api/dropin/view/b;->DISCOVER:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/braintreepayments/api/dropin/view/b;->AMEX:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v1, v0, v11

    sget-object v1, Lcom/braintreepayments/api/dropin/view/b;->JCB:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/braintreepayments/api/dropin/view/b;->DINERS:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/braintreepayments/api/dropin/view/b;->MAESTRO:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/braintreepayments/api/dropin/view/b;->PAYPAL:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/braintreepayments/api/dropin/view/b;->ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/braintreepayments/api/dropin/view/b;->$VALUES:[Lcom/braintreepayments/api/dropin/view/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/braintreepayments/api/dropin/view/b;->mPictureResId:I

    .line 45
    iput p4, p0, Lcom/braintreepayments/api/dropin/view/b;->mDescriptorStringId:I

    .line 46
    iput-object p5, p0, Lcom/braintreepayments/api/dropin/view/b;->mCanonicalName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/view/b;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/braintreepayments/api/dropin/view/b;->mPictureResId:I

    return v0
.end method

.method static synthetic access$100(Lcom/braintreepayments/api/dropin/view/b;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/braintreepayments/api/dropin/view/b;->mDescriptorStringId:I

    return v0
.end method

.method static forType(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/b;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/braintreepayments/api/dropin/view/b;->values()[Lcom/braintreepayments/api/dropin/view/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    iget-object v4, v0, Lcom/braintreepayments/api/dropin/view/b;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/b;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/braintreepayments/api/dropin/view/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/b;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/view/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/braintreepayments/api/dropin/view/b;->$VALUES:[Lcom/braintreepayments/api/dropin/view/b;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/view/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/view/b;

    return-object v0
.end method
