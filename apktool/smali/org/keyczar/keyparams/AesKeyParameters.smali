.class public interface abstract Lorg/keyczar/keyparams/AesKeyParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/keyparams/KeyParameters;


# virtual methods
.method public abstract getHmacKey()Lorg/keyczar/HmacKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method
