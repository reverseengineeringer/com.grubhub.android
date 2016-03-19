.class Lorg/keyczar/SignedSessionEncrypter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/keyparams/AesKeyParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/keyczar/SignedSessionEncrypter;->newSession(I)Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/keyczar/SignedSessionEncrypter;

.field final synthetic val$aesKeySize:I


# direct methods
.method constructor <init>(Lorg/keyczar/SignedSessionEncrypter;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/keyczar/SignedSessionEncrypter$1;->this$0:Lorg/keyczar/SignedSessionEncrypter;

    iput p2, p0, Lorg/keyczar/SignedSessionEncrypter$1;->val$aesKeySize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHmacKey()Lorg/keyczar/HmacKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/keyczar/DefaultKeyType;->applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/HmacKey;->generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/HmacKey;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/keyczar/SignedSessionEncrypter$1;->val$aesKeySize:I

    return v0
.end method
