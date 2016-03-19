.class public final enum Lorg/keyczar/DefaultKeyType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/interfaces/KeyType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/DefaultKeyType;",
        ">;",
        "Lorg/keyczar/interfaces/KeyType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/DefaultKeyType;

.field public static final enum AES:Lorg/keyczar/DefaultKeyType;

.field public static final enum DSA_PRIV:Lorg/keyczar/DefaultKeyType;

.field public static final enum DSA_PUB:Lorg/keyczar/DefaultKeyType;

.field public static final enum EC_PRIV:Lorg/keyczar/DefaultKeyType;

.field public static final enum EC_PUB:Lorg/keyczar/DefaultKeyType;

.field public static final enum HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

.field public static final enum RSA_PRIV:Lorg/keyczar/DefaultKeyType;

.field public static final enum RSA_PUB:Lorg/keyczar/DefaultKeyType;

.field public static final enum TEST:Lorg/keyczar/DefaultKeyType;


# instance fields
.field private final acceptableSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "AES"

    new-array v2, v8, [Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    .line 64
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "HMAC_SHA1"

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    .line 65
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "DSA_PRIV"

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    .line 66
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "DSA_PUB"

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    .line 67
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "RSA_PRIV"

    new-array v2, v8, [Ljava/lang/Integer;

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    .line 68
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "RSA_PUB"

    const/4 v2, 0x5

    new-array v3, v8, [Ljava/lang/Integer;

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    .line 69
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "EC_PRIV"

    const/4 v2, 0x6

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x209

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->EC_PRIV:Lorg/keyczar/DefaultKeyType;

    .line 70
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "EC_PUB"

    const/4 v2, 0x7

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x209

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->EC_PUB:Lorg/keyczar/DefaultKeyType;

    .line 71
    new-instance v0, Lorg/keyczar/DefaultKeyType;

    const-string v1, "TEST"

    const/16 v2, 0x8

    new-array v3, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/DefaultKeyType;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/keyczar/DefaultKeyType;

    sget-object v1, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/keyczar/DefaultKeyType;->EC_PRIV:Lorg/keyczar/DefaultKeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/keyczar/DefaultKeyType;->EC_PUB:Lorg/keyczar/DefaultKeyType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/keyczar/DefaultKeyType;->$VALUES:[Lorg/keyczar/DefaultKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lorg/keyczar/DefaultKeyType;->acceptableSizes:Ljava/util/List;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lorg/keyczar/DefaultKeyType;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType;->acceptableSizes:Ljava/util/List;

    return-object v0
.end method

.method private validateKeySize(Lorg/keyczar/keyparams/KeyParameters;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-interface {p1}, Lorg/keyczar/keyparams/KeyParameters;->getKeySize()I

    move-result v1

    .line 110
    invoke-virtual {p0, v1}, Lorg/keyczar/DefaultKeyType;->isAcceptableSize(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Invalid key size"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType;->acceptableSizes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    if-ge v1, v0, :cond_1

    .line 115
    const-string v2, "Keyczar.SizeWarning"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/keyczar/DefaultKeyType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateParametersType(Lorg/keyczar/keyparams/KeyParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    invoke-virtual {p0}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    return-void

    .line 95
    :pswitch_0
    instance-of v0, p1, Lorg/keyczar/keyparams/RsaKeyParameters;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Invalid key parameters type"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_1
    instance-of v0, p1, Lorg/keyczar/keyparams/AesKeyParameters;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Invalid key parameters type"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/DefaultKeyType;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/keyczar/DefaultKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/DefaultKeyType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/keyczar/DefaultKeyType;->$VALUES:[Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, [Lorg/keyczar/DefaultKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method


# virtual methods
.method public applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    invoke-virtual {p0}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;

    invoke-direct {v0, p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    new-instance v0, Lorg/keyczar/DefaultKeyType$DefaultingRsaKeyParameters;

    invoke-direct {v0, p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultingRsaKeyParameters;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V

    goto :goto_0

    .line 129
    :pswitch_1
    new-instance v0, Lorg/keyczar/DefaultKeyType$DefaultingAesKeyParameters;

    invoke-direct {v0, p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultingAesKeyParameters;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/DefaultKeyType$1;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/keyczar/DefaultKeyType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isAcceptableSize(I)Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType;->acceptableSizes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public validateKeyParameters(Lorg/keyczar/keyparams/KeyParameters;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/keyczar/DefaultKeyType;->validateParametersType(Lorg/keyczar/keyparams/KeyParameters;)V

    .line 88
    invoke-direct {p0, p1}, Lorg/keyczar/DefaultKeyType;->validateKeySize(Lorg/keyczar/keyparams/KeyParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
