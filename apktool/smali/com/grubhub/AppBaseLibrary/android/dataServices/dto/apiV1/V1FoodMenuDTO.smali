.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;


# static fields
.field public static final GENERATION_DATE_DATEFORMAT:Ljava/lang/String; = "E MMM dd HH:mm:ss z yyyy"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private expirationTimeMillis:Ljava/lang/Double;

.field private externalPaymentProcessor:Ljava/lang/Boolean;

.field private generationDate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private itemChoices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;

.field private menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

.field private messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMessages;

.field private restaurantName:Ljava/lang/String;

.field private timePeriods:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    return-void
.end method

.method static synthetic access$1100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->itemChoices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;

    return-object v0
.end method

.method private addNewMenuSectionContainingMenuItemsWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;
    .locals 4

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->getArrayOfFoodMenuItemsWithTag(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;-><init>()V

    .line 923
    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->name:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$102(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->description:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$1202(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$1;)V

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$202(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    .line 926
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v2

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$302(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 927
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 930
    :cond_0
    return-object p0
.end method

.method private convertGenerationDateStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 896
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "E MMM dd HH:mm:ss z yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x0

    .line 899
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    .line 900
    :catch_0
    move-exception v1

    .line 901
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getArrayOfFoodMenuItemsWithTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 946
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 965
    :goto_0
    return-object v0

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    .line 952
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 953
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 954
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 956
    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->removeFoodItemsNotBeingServed(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)Z

    move-result v2

    .line 957
    if-eqz v2, :cond_4

    .line 958
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 959
    check-cast v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->hasTag(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 960
    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 965
    goto :goto_0
.end method

.method private removeFoodItemsNotBeingServed(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)Z
    .locals 8

    .prologue
    .line 976
    const/4 v1, 0x0

    move-object v0, p2

    .line 977
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_3

    .line 979
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;->timePeriodRef:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;->access$1500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;)Ljava/util/ArrayList;

    move-result-object v0

    .line 982
    :try_start_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->generationDate:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->convertGenerationDateStringToDate(Ljava/lang/String;)Ljava/util/Date;

    .line 983
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTimePeriodRef;

    .line 985
    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTimePeriodRef;->getTimePeriodId()Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTimePeriodRef;->access$1600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTimePeriodRef;)Ljava/lang/String;

    move-result-object v3

    .line 986
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->timePeriods:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriods;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriods;->timePeriod:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriods;->access$1700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriods;)Ljava/util/ArrayList;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;

    .line 988
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->active:Z
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->access$1800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;)Z

    move-result v5

    if-nez v5, :cond_2

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->getTimePeriodId()Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;->access$1900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSTimePeriod;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    const-string v0, "TIMEREFS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We are now in a timeref that is active and matches a food Item. Timeref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FoodItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 996
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1003
    :goto_2
    return v0

    .line 999
    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 1000
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public findAllMenuSectionNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    .line 77
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    return-object v1
.end method

.method public getExpirationTimeMillis()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->expirationTimeMillis:Ljava/lang/Double;

    return-object v0
.end method

.method public getGenerationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->generationDate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->convertGenerationDateStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMenuItemById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 5

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    .line 91
    if-eqz v0, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v3

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 92
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 93
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getMenuItemChoiceGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
    .locals 4

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->itemChoices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->itemChoices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;->choice:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->itemChoices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSItemChoices;->choice:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;

    .line 141
    if-eqz v0, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMenuItemIdBySectionPosition(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    .line 110
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    .line 113
    if-eqz v0, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v2

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    .line 114
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v2

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 115
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getMenuItemOptionById(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-interface {p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemChoiceGroupOption(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuSections()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_0
    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->restaurantName:Ljava/lang/String;

    return-object v0
.end method

.method public isMenuItemPopular(II)Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    .line 172
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->menuSections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->section:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuSections;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;

    .line 175
    if-eqz v0, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 176
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v1

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 177
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->items:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuSection;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->item:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHMenuItems;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->isPopular()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postGSONProcessData(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
    .locals 3

    .prologue
    .line 198
    const v0, 0x7f08038e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    const v1, 0x7f080390

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, ""

    invoke-direct {p0, v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->addNewMenuSectionContainingMenuItemsWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    .line 201
    return-object p0
.end method
