.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;
.implements Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;


# instance fields
.field private access_token:Ljava/lang/String;

.field private expire_in:J

.field private grubhub_token:Ljava/lang/String;

.field private refresh_expire_in:J

.field private refresh_token:Ljava/lang/String;

.field private refresh_token_created:Ljava/lang/String;

.field private refresh_token_created_time:J

.field private refresh_token_expire_time:J

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

.field private token_created:Ljava/lang/String;

.field private token_created_time:J

.field private token_expire_time:J

.field private token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->grubhub_token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V
    .locals 0

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;)V

    .line 169
    :cond_0
    return-void
.end method

.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire_in()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->expire_in:J

    return-wide v0
.end method

.method public getGrubhub_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->grubhub_token:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_expire_in()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_expire_in:J

    return-wide v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token_created()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token_created:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token_created_time()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token_created_time:J

    return-wide v0
.end method

.method public getRefresh_token_expire_time()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token_expire_time:J

    return-wide v0
.end method

.method public getToken_created()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->token_created:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_created_time()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->token_created_time:J

    return-wide v0
.end method

.method public getToken_expire_time()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->token_expire_time:J

    return-wide v0
.end method

.method public getToken_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public setRefresh_token_expire_time(J)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->refresh_token_expire_time:J

    .line 162
    return-void
.end method

.method public setToken_expire_time(J)V
    .locals 1

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO$GHSSession;->token_expire_time:J

    .line 157
    return-void
.end method
