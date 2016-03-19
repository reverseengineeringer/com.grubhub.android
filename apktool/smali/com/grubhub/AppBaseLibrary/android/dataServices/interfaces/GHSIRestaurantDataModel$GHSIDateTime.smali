.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE_TIME_DOW_FRIDAY:I = 0x6

.field public static final DATE_TIME_DOW_MONDAY:I = 0x2

.field public static final DATE_TIME_DOW_SATURDAY:I = 0x7

.field public static final DATE_TIME_DOW_SUNDAY:I = 0x1

.field public static final DATE_TIME_DOW_THURSDAY:I = 0x5

.field public static final DATE_TIME_DOW_TUESDAY:I = 0x3

.field public static final DATE_TIME_DOW_WEDNESDAY:I = 0x4


# virtual methods
.method public abstract getDayOfWeek()I
.end method

.method public abstract getDayOfWeekString()Ljava/lang/String;
.end method

.method public abstract getTimeRanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
