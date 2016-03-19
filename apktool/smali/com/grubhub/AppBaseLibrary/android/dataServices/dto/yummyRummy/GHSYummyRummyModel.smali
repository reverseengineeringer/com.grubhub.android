.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;


# instance fields
.field private integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCheckUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    const-string v0, ""

    .line 36
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->check:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->play:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->play:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    const-string v0, ""

    .line 27
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->play:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRulesUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->rules:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->rules:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const-string v0, ""

    .line 45
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel;->integrations:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->rules:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegration;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyModel$GHSIntegrationObj;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
