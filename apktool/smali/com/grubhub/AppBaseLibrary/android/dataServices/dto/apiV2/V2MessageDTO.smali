.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;


# static fields
.field private static final BUTTON_CANCEL:Ljava/lang/String; = "dismiss"

.field private static final BUTTON_LINK:Ljava/lang/String; = "link"

.field private static final DISPLAY_ALWAYS:Ljava/lang/String; = "always"

.field private static final WEB_VIEW:Ljava/lang/String; = "_webview"


# instance fields
.field private body:Ljava/lang/String;

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;",
            ">;"
        }
    .end annotation
.end field

.field private display:Ljava/lang/String;

.field private endAt:J

.field private etag:Ljava/lang/String;

.field private startAt:J

.field private target:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private versions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public appliesToVersion(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->versions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->versions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->startAt:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->endAt:J

    return-wide v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;

    .line 62
    if-eqz v0, :cond_0

    const-string v2, "dismiss"

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->action:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->text:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;

    .line 49
    if-eqz v0, :cond_0

    const-string v2, "link"

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->action:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->text:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO$Button;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeat()Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "always"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebView()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "_webview"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MessageDTO;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
