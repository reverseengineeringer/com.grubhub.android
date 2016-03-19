.class public Lcom/appsflyer/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/appsflyer/k;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appsflyer/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/appsflyer/k;

    invoke-direct {v0}, Lcom/appsflyer/k;-><init>()V

    sput-object v0, Lcom/appsflyer/k;->b:Lcom/appsflyer/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/k;->a:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static a()Lcom/appsflyer/k;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/appsflyer/k;->b:Lcom/appsflyer/k;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/appsflyer/k;->a:Ljava/util/List;

    new-instance v1, Lcom/appsflyer/l;

    invoke-direct {v1, p1}, Lcom/appsflyer/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
