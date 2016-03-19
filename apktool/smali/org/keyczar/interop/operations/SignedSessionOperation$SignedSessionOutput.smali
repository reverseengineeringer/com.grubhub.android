.class Lorg/keyczar/interop/operations/SignedSessionOperation$SignedSessionOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final output:Ljava/lang/String;

.field public final sessionMaterial:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/interop/operations/SignedSessionOperation$SignedSessionOutput;->output:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/keyczar/interop/operations/SignedSessionOperation$SignedSessionOutput;->sessionMaterial:Ljava/lang/String;

    .line 70
    return-void
.end method
