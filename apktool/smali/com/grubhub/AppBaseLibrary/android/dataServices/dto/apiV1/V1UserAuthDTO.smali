.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;


# instance fields
.field private email:Ljava/lang/String;

.field private favorites:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSFavorites;

.field protected firstName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field protected lastName:Ljava/lang/String;

.field private messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;

.field private orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;

.field private savedPassword:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private findTagData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 259
    const/4 v0, 0x0

    .line 260
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 261
    const-string v1, "<"

    const-string v2, "</"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 264
    if-eq v2, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClaims()Ljava/util/ArrayList;
    .locals 1
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
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredential()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSICredential;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->message:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->message:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->message:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessages;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessage;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessage;->message:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessage;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSMessage;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_0
    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrubHubToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrders()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;

    return-object v0
.end method

.method public bridge synthetic getOrders()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSIOrders;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->getOrders()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO$GHSOrders;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->savedPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->savedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->savedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseXMLNonErrorResponse(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;
    .locals 4

    .prologue
    .line 224
    const-string v0, "<first-name>"

    .line 225
    const-string v1, "<last-name>"

    .line 226
    const-string v2, "<email>"

    .line 227
    const-string v2, "<id>"

    .line 228
    const-string v3, "<token>"

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->findTagData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-direct {p0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->findTagData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-direct {p0, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->findTagData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-direct {p0, v2, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->findTagData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->firstName:Ljava/lang/String;

    .line 238
    :cond_0
    if-eqz v1, :cond_1

    .line 239
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->lastName:Ljava/lang/String;

    .line 240
    :cond_1
    if-eqz v3, :cond_2

    .line 241
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->token:Ljava/lang/String;

    .line 243
    :cond_2
    if-eqz v2, :cond_3

    .line 244
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->id:Ljava/lang/String;

    .line 248
    :cond_3
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->savedPassword:Ljava/lang/String;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;->savedPassword:Ljava/lang/String;

    goto :goto_0
.end method
