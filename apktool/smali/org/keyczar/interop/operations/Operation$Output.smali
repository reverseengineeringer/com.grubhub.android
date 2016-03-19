.class Lorg/keyczar/interop/operations/Operation$Output;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final output:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/interop/operations/Operation$Output;->output:Ljava/lang/String;

    .line 152
    return-void
.end method
