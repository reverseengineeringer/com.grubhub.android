.class public Lorg/keyczar/interop/Tester;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final command:Ljava/lang/String;

.field private final generateOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPath:Ljava/lang/String;

.field private final operation:Ljava/lang/String;

.field private final output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final testData:Ljava/lang/String;

.field private final testOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/keyczar/interop/Tester;->command:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/keyczar/interop/Tester;->operation:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lorg/keyczar/interop/Tester;->keyPath:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lorg/keyczar/interop/Tester;->algorithm:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lorg/keyczar/interop/Tester;->generateOptions:Ljava/util/Map;

    .line 32
    iput-object p6, p0, Lorg/keyczar/interop/Tester;->testOptions:Ljava/util/Map;

    .line 33
    iput-object p7, p0, Lorg/keyczar/interop/Tester;->output:Ljava/util/Map;

    .line 34
    iput-object p8, p0, Lorg/keyczar/interop/Tester;->testData:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public test()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/keyczar/interop/Tester;->operation:Ljava/lang/String;

    iget-object v1, p0, Lorg/keyczar/interop/Tester;->keyPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/keyczar/interop/Tester;->testData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/keyczar/interop/operations/Operation;->getOperationByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interop/operations/Operation;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lorg/keyczar/interop/Tester;->output:Ljava/util/Map;

    iget-object v2, p0, Lorg/keyczar/interop/Tester;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/keyczar/interop/Tester;->generateOptions:Ljava/util/Map;

    iget-object v4, p0, Lorg/keyczar/interop/Tester;->testOptions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/keyczar/interop/operations/Operation;->test(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 40
    return-void
.end method
