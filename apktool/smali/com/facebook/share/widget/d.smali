.class public final enum Lcom/facebook/share/widget/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/widget/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/d;

.field public static DEFAULT:Lcom/facebook/share/widget/d;

.field public static final enum OPEN_GRAPH:Lcom/facebook/share/widget/d;

.field public static final enum PAGE:Lcom/facebook/share/widget/d;

.field public static final enum UNKNOWN:Lcom/facebook/share/widget/d;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/facebook/share/widget/d;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    .line 70
    new-instance v0, Lcom/facebook/share/widget/d;

    const-string v1, "OPEN_GRAPH"

    const-string v2, "open_graph"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/d;->OPEN_GRAPH:Lcom/facebook/share/widget/d;

    .line 75
    new-instance v0, Lcom/facebook/share/widget/d;

    const-string v1, "PAGE"

    const-string v2, "page"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/d;->PAGE:Lcom/facebook/share/widget/d;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/widget/d;

    sget-object v1, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/d;->OPEN_GRAPH:Lcom/facebook/share/widget/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/d;->PAGE:Lcom/facebook/share/widget/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/d;->$VALUES:[Lcom/facebook/share/widget/d;

    .line 77
    sget-object v0, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    sput-object v0, Lcom/facebook/share/widget/d;->DEFAULT:Lcom/facebook/share/widget/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/facebook/share/widget/d;->stringValue:Ljava/lang/String;

    .line 93
    iput p4, p0, Lcom/facebook/share/widget/d;->intValue:I

    .line 94
    return-void
.end method

.method public static fromInt(I)Lcom/facebook/share/widget/d;
    .locals 5

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/share/widget/d;->values()[Lcom/facebook/share/widget/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 81
    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 86
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/d;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/facebook/share/widget/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/d;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/widget/d;->$VALUES:[Lcom/facebook/share/widget/d;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/d;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/facebook/share/widget/d;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/share/widget/d;->stringValue:Ljava/lang/String;

    return-object v0
.end method
