.class public Lorg/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/c/b/d;


# instance fields
.field private final b:Lorg/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/c/b/d;

    invoke-direct {v0}, Lorg/c/b/d;-><init>()V

    sput-object v0, Lorg/c/b/d;->a:Lorg/c/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/c/a/b;

    invoke-direct {v0}, Lorg/c/a/b;-><init>()V

    iput-object v0, p0, Lorg/c/b/d;->b:Lorg/c/b;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lorg/c/b;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/c/b/d;->b:Lorg/c/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/c/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
