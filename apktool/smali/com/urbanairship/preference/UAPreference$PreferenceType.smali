.class public final enum Lcom/urbanairship/preference/UAPreference$PreferenceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/preference/UAPreference$PreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum ANALYTICS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum CHANNEL_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum LOCATION_BACKGROUND_UPDATES_ALLOWED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum LOCATION_UPDATES_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum QUIET_TIME_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum QUIET_TIME_END:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum QUIET_TIME_START:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum SOUND_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum USER_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum USER_NOTIFICATIONS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field public static final enum VIBRATE_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "USER_NOTIFICATIONS_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->USER_NOTIFICATIONS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 46
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "SOUND_ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->SOUND_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 51
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "VIBRATE_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->VIBRATE_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 56
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "QUIET_TIME_ENABLED"

    invoke-direct {v0, v1, v6}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 61
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "QUIET_TIME_START"

    invoke-direct {v0, v1, v7}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_START:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 66
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "QUIET_TIME_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_END:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 71
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->LOCATION_UPDATES_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 76
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "LOCATION_BACKGROUND_UPDATES_ALLOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->LOCATION_BACKGROUND_UPDATES_ALLOWED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 81
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "CHANNEL_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->CHANNEL_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 86
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "USER_ID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->USER_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 91
    new-instance v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    const-string v1, "ANALYTICS_ENABLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/preference/UAPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ANALYTICS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/urbanairship/preference/UAPreference$PreferenceType;

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->USER_NOTIFICATIONS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->SOUND_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->VIBRATE_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_START:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->QUIET_TIME_END:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->LOCATION_UPDATES_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->LOCATION_BACKGROUND_UPDATES_ALLOWED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->CHANNEL_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->USER_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ANALYTICS_ENABLED:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->$VALUES:[Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->$VALUES:[Lcom/urbanairship/preference/UAPreference$PreferenceType;

    invoke-virtual {v0}, [Lcom/urbanairship/preference/UAPreference$PreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-object v0
.end method
