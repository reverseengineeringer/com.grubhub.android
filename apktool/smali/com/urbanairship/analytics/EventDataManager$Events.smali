.class final Lcom/urbanairship/analytics/EventDataManager$Events;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ASCENDING_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field private static final COLUMN_NAME_DATA:Ljava/lang/String; = "data"

.field private static final COLUMN_NAME_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final COLUMN_NAME_EVENT_SIZE:Ljava/lang/String; = "event_size"

.field private static final COLUMN_NAME_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final COLUMN_NAME_TIME:Ljava/lang/String; = "time"

.field private static final COLUMN_NAME_TYPE:Ljava/lang/String; = "type"

.field public static final TABLE_NAME:Ljava/lang/String; = "events"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
