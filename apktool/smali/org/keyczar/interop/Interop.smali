.class public Lorg/keyczar/interop/Interop;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static getCommandType(Ljava/lang/String;)Lorg/keyczar/interop/InteropCommand;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 64
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 65
    const-string v1, "command"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/interop/InteropCommand;->getCommand(Ljava/lang/String;)Lorg/keyczar/interop/InteropCommand;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lorg/apache/log4j/varia/NullAppender;

    invoke-direct {v0}, Lorg/apache/log4j/varia/NullAppender;-><init>()V

    invoke-static {v0}, Lorg/apache/log4j/BasicConfigurator;->configure(Lorg/apache/log4j/Appender;)V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 23
    sget-object v1, Lorg/keyczar/interop/Interop$1;->$SwitchMap$org$keyczar$interop$InteropCommand:[I

    aget-object v2, p0, v3

    invoke-static {v2}, Lorg/keyczar/interop/Interop;->getCommandType(Ljava/lang/String;)Lorg/keyczar/interop/InteropCommand;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/interop/InteropCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No such command"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 26
    :pswitch_0
    aget-object v1, p0, v3

    const-class v2, Lorg/keyczar/interop/Generator;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interop/Generator;

    .line 28
    :try_start_0
    invoke-virtual {v0}, Lorg/keyczar/interop/Generator;->generate()Ljava/lang/String;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lorg/keyczar/exceptions/KeyczarException;->printStackTrace()V

    .line 34
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 38
    :pswitch_1
    aget-object v1, p0, v3

    const-class v2, Lorg/keyczar/interop/Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interop/Creator;

    .line 39
    invoke-virtual {v0}, Lorg/keyczar/interop/Creator;->create()V

    goto :goto_0

    .line 43
    :pswitch_2
    aget-object v1, p0, v3

    const-class v2, Lorg/keyczar/interop/Tester;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interop/Tester;

    .line 45
    :try_start_1
    invoke-virtual {v0}, Lorg/keyczar/interop/Tester;->test()V
    :try_end_1
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/keyczar/exceptions/KeyczarException;->printStackTrace()V

    .line 48
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
