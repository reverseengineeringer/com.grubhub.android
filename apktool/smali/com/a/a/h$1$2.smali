.class Lcom/a/a/h$1$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/h$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/h$1;


# direct methods
.method constructor <init>(Lcom/a/a/h$1;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/a/a/h$1$2;->a:Lcom/a/a/h$1;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/a/a/h$1$2;->a:Lcom/a/a/h$1;

    iget-object v0, v0, Lcom/a/a/h$1;->b:Lcom/a/a/h;

    invoke-static {v0, p1}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method
