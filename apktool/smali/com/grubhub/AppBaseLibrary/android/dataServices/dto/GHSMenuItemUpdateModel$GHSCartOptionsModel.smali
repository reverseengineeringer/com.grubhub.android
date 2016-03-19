.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;


# instance fields
.field private id:Ljava/lang/String;

.field private subOptionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOptionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;->subOptionIds:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSubOptionIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;->subOptionIds:Ljava/util/List;

    .line 40
    return-void
.end method
