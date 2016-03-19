.class public final enum Lorg/keyczar/interop/InteropCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/interop/InteropCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/interop/InteropCommand;

.field public static final enum CREATE:Lorg/keyczar/interop/InteropCommand;

.field public static final enum GENERATE:Lorg/keyczar/interop/InteropCommand;

.field public static final enum TEST:Lorg/keyczar/interop/InteropCommand;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lorg/keyczar/interop/InteropCommand;

    const-string v1, "CREATE"

    const-string v2, "create"

    invoke-direct {v0, v1, v3, v2}, Lorg/keyczar/interop/InteropCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/interop/InteropCommand;->CREATE:Lorg/keyczar/interop/InteropCommand;

    .line 10
    new-instance v0, Lorg/keyczar/interop/InteropCommand;

    const-string v1, "GENERATE"

    const-string v2, "generate"

    invoke-direct {v0, v1, v4, v2}, Lorg/keyczar/interop/InteropCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/interop/InteropCommand;->GENERATE:Lorg/keyczar/interop/InteropCommand;

    .line 11
    new-instance v0, Lorg/keyczar/interop/InteropCommand;

    const-string v1, "TEST"

    const-string v2, "test"

    invoke-direct {v0, v1, v5, v2}, Lorg/keyczar/interop/InteropCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/interop/InteropCommand;->TEST:Lorg/keyczar/interop/InteropCommand;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/keyczar/interop/InteropCommand;

    sget-object v1, Lorg/keyczar/interop/InteropCommand;->CREATE:Lorg/keyczar/interop/InteropCommand;

    aput-object v1, v0, v3

    sget-object v1, Lorg/keyczar/interop/InteropCommand;->GENERATE:Lorg/keyczar/interop/InteropCommand;

    aput-object v1, v0, v4

    sget-object v1, Lorg/keyczar/interop/InteropCommand;->TEST:Lorg/keyczar/interop/InteropCommand;

    aput-object v1, v0, v5

    sput-object v0, Lorg/keyczar/interop/InteropCommand;->$VALUES:[Lorg/keyczar/interop/InteropCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lorg/keyczar/interop/InteropCommand;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static getCommand(Ljava/lang/String;)Lorg/keyczar/interop/InteropCommand;
    .locals 4

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28
    :cond_0
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->CREATE:Lorg/keyczar/interop/InteropCommand;

    invoke-virtual {v0}, Lorg/keyczar/interop/InteropCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->CREATE:Lorg/keyczar/interop/InteropCommand;

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_1
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->GENERATE:Lorg/keyczar/interop/InteropCommand;

    invoke-virtual {v0}, Lorg/keyczar/interop/InteropCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->GENERATE:Lorg/keyczar/interop/InteropCommand;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->TEST:Lorg/keyczar/interop/InteropCommand;

    invoke-virtual {v0}, Lorg/keyczar/interop/InteropCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->TEST:Lorg/keyczar/interop/InteropCommand;

    goto :goto_0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command.UnknownCommand"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/interop/InteropCommand;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lorg/keyczar/interop/InteropCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interop/InteropCommand;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/interop/InteropCommand;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/keyczar/interop/InteropCommand;->$VALUES:[Lorg/keyczar/interop/InteropCommand;

    invoke-virtual {v0}, [Lorg/keyczar/interop/InteropCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/interop/InteropCommand;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/keyczar/interop/InteropCommand;->name:Ljava/lang/String;

    return-object v0
.end method
