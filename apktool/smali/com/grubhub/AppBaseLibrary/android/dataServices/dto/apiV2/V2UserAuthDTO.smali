.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;


# instance fields
.field private claims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;",
            ">;"
        }
    .end annotation
.end field

.field private credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

.field private savedPassword:Ljava/lang/String;

.field private session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSClaim;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    .line 34
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    .line 35
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->claims:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access_token:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClaims()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIClaim;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->claims:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCredential()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSICredential;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->email:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->first_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGrubHubToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->gh_login_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->last_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrders()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIOrders;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->savedPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->savedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->savedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->grubhub_token:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->session_handle:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->grubhub_token:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->claims:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->claims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIClaim;

    .line 255
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIClaim;->getClaim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gh_token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIClaim;->getClaim_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->credential:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->ud_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSCredential;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->savedPassword:Ljava/lang/String;

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;->savedPassword:Ljava/lang/String;

    goto :goto_0
.end method
