.class abstract Lcom/urbanairship/preference/UACheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/preference/UAPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/urbanairship/preference/UACheckBoxPreference;->getPreferenceType()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/preference/UACheckBoxPreference;->setChecked(Z)V

    .line 52
    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
