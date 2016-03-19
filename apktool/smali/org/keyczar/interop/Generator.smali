.class public Lorg/keyczar/interop/Generator;
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

.field private final testData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/keyczar/interop/Generator;->command:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/keyczar/interop/Generator;->operation:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/keyczar/interop/Generator;->keyPath:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lorg/keyczar/interop/Generator;->algorithm:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lorg/keyczar/interop/Generator;->generateOptions:Ljava/util/Map;

    .line 29
    iput-object p6, p0, Lorg/keyczar/interop/Generator;->testData:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/keyczar/interop/Generator;->operation:Ljava/lang/String;

    iget-object v1, p0, Lorg/keyczar/interop/Generator;->keyPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/keyczar/interop/Generator;->testData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/keyczar/interop/operations/Operation;->getOperationByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interop/operations/Operation;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lorg/keyczar/interop/Generator;->algorithm:Ljava/lang/String;

    iget-object v2, p0, Lorg/keyczar/interop/Generator;->generateOptions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/keyczar/interop/operations/Operation;->generate(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lorg/keyczar/interop/operations/Operation;->formatOutput([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
