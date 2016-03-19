.class Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/interfaces/KeyType$Builder;


# instance fields
.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method private constructor <init>(Lorg/keyczar/DefaultKeyType;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/DefaultKeyType$1;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;-><init>(Lorg/keyczar/DefaultKeyType;)V

    return-void
.end method


# virtual methods
.method public generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/KeyczarKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0, p1}, Lorg/keyczar/DefaultKeyType;->applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v1, v0}, Lorg/keyczar/DefaultKeyType;->validateKeyParameters(Lorg/keyczar/keyparams/KeyParameters;)Ljava/lang/String;

    .line 230
    sget-object v1, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    iget-object v2, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v2}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v0, Lorg/keyczar/exceptions/UnsupportedTypeException;

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v0

    .line 232
    :pswitch_0
    check-cast v0, Lorg/keyczar/keyparams/AesKeyParameters;

    invoke-static {v0}, Lorg/keyczar/AesKey;->generate(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 234
    :pswitch_1
    invoke-static {v0}, Lorg/keyczar/HmacKey;->generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/HmacKey;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_2
    invoke-static {v0}, Lorg/keyczar/DsaPrivateKey;->generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_3
    check-cast v0, Lorg/keyczar/keyparams/RsaKeyParameters;

    invoke-static {v0}, Lorg/keyczar/RsaPrivateKey;->generate(Lorg/keyczar/keyparams/RsaKeyParameters;)Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_4
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarKey.PublicKeyExport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v1}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    new-instance v0, Lorg/keyczar/exceptions/UnsupportedTypeException;

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v0

    .line 205
    :pswitch_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->read(Ljava/lang/String;)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 207
    :pswitch_1
    invoke-static {p1}, Lorg/keyczar/HmacKey;->read(Ljava/lang/String;)Lorg/keyczar/HmacKey;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-static {p1}, Lorg/keyczar/DsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-static {p1}, Lorg/keyczar/DsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPublicKey;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_4
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_5
    invoke-static {p1}, Lorg/keyczar/RsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPublicKey;

    move-result-object v0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
