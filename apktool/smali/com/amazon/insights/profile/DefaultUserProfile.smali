.class public Lcom/amazon/insights/profile/DefaultUserProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/UserProfile;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/insights/UserProfile;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/amazon/insights/profile/DefaultUserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final dimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    return-void
.end method

.method public static newInstance()Lcom/amazon/insights/UserProfile;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/amazon/insights/profile/DefaultUserProfile;

    invoke-direct {v0}, Lcom/amazon/insights/profile/DefaultUserProfile;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addDimensionAsBoolean(Ljava/lang/String;Z)Lcom/amazon/insights/UserProfile;
    .locals 2

    .prologue
    .line 43
    invoke-static {p1}, Lcom/amazon/insights/core/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-object p0
.end method

.method public addDimensionAsNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/UserProfile;
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Lcom/amazon/insights/core/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-object p0
.end method

.method public addDimensionAsString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/UserProfile;
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/amazon/insights/core/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-object p0
.end method

.method public compareTo(Lcom/amazon/insights/profile/DefaultUserProfile;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 113
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    iget-object v3, p1, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    .line 121
    iget-object v4, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    if-eq v4, v3, :cond_4

    .line 122
    iget-object v4, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 125
    if-nez v3, :cond_3

    move v0, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 131
    if-lt v4, v3, :cond_0

    .line 132
    if-le v4, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/amazon/insights/profile/DefaultUserProfile;

    invoke-virtual {p0, p1}, Lcom/amazon/insights/profile/DefaultUserProfile;->compareTo(Lcom/amazon/insights/profile/DefaultUserProfile;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    instance-of v2, p1, Lcom/amazon/insights/UserProfile;

    if-eqz v2, :cond_2

    .line 100
    check-cast p1, Lcom/amazon/insights/profile/DefaultUserProfile;

    invoke-virtual {p0, p1}, Lcom/amazon/insights/profile/DefaultUserProfile;->compareTo(Lcom/amazon/insights/profile/DefaultUserProfile;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public getDimensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    const/4 v1, 0x1

    .line 84
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 85
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/profile/DefaultUserProfile;->dimensions:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
