.class public final enum Lcom/facebook/share/widget/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/widget/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/b;

.field public static final enum CENTER:Lcom/facebook/share/widget/b;

.field static DEFAULT:Lcom/facebook/share/widget/b;

.field public static final enum LEFT:Lcom/facebook/share/widget/b;

.field public static final enum RIGHT:Lcom/facebook/share/widget/b;


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

    .line 169
    new-instance v0, Lcom/facebook/share/widget/b;

    const-string v1, "CENTER"

    const-string v2, "center"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/b;->CENTER:Lcom/facebook/share/widget/b;

    .line 175
    new-instance v0, Lcom/facebook/share/widget/b;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/b;->LEFT:Lcom/facebook/share/widget/b;

    .line 182
    new-instance v0, Lcom/facebook/share/widget/b;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/b;->RIGHT:Lcom/facebook/share/widget/b;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/widget/b;

    sget-object v1, Lcom/facebook/share/widget/b;->CENTER:Lcom/facebook/share/widget/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/b;->LEFT:Lcom/facebook/share/widget/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/b;->RIGHT:Lcom/facebook/share/widget/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/b;->$VALUES:[Lcom/facebook/share/widget/b;

    .line 184
    sget-object v0, Lcom/facebook/share/widget/b;->CENTER:Lcom/facebook/share/widget/b;

    sput-object v0, Lcom/facebook/share/widget/b;->DEFAULT:Lcom/facebook/share/widget/b;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput-object p3, p0, Lcom/facebook/share/widget/b;->stringValue:Ljava/lang/String;

    .line 200
    iput p4, p0, Lcom/facebook/share/widget/b;->intValue:I

    .line 201
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/widget/b;)I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/facebook/share/widget/b;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/b;
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcom/facebook/share/widget/b;->values()[Lcom/facebook/share/widget/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 188
    invoke-direct {v0}, Lcom/facebook/share/widget/b;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 193
    :goto_1
    return-object v0

    .line 187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/facebook/share/widget/b;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/b;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/facebook/share/widget/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/b;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/facebook/share/widget/b;->$VALUES:[Lcom/facebook/share/widget/b;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/share/widget/b;->stringValue:Ljava/lang/String;

    return-object v0
.end method
