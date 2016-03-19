.class public Lio/card/payment/ui/Appearance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field public static final BUTTON_PRIMARY_DISABLED_COLOR:I

.field public static final BUTTON_PRIMARY_FOCUS_COLOR:I

.field public static final BUTTON_PRIMARY_NORMAL_COLOR:I

.field public static final BUTTON_PRIMARY_PRESSED_COLOR:I

.field public static final BUTTON_SECONDARY_DISABLED_COLOR:I

.field public static final BUTTON_SECONDARY_FOCUS_COLOR:I

.field public static final BUTTON_SECONDARY_NORMAL_COLOR:I

.field public static final BUTTON_SECONDARY_PRESSED_COLOR:I

.field public static final BUTTON_STATE_DISABLED:[I

.field public static final BUTTON_STATE_FOCUSED:[I

.field public static final BUTTON_STATE_NORMAL:[I

.field public static final BUTTON_STATE_PRESSED:[I

.field public static final DEFAULT_BACKGROUND_COLOR:I

.field public static final PAL_BLUE_COLOR:I

.field public static final PAL_BLUE_COLOR_OPACITY_66:I

.field public static final PAY_BLUE_COLOR:I

.field public static final TEXT_COLOR_ERROR:I

.field public static final TEXT_COLOR_LABEL:I

.field public static final TEXT_COLOR_LIGHT:I

.field public static final TYPEFACE_BUTTON:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    .line 38
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    .line 39
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    .line 40
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    .line 44
    const-string v0, "#003087"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->PAY_BLUE_COLOR:I

    .line 45
    const-string v0, "#009CDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR:I

    .line 46
    const-string v0, "#aa009CDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR_OPACITY_66:I

    .line 50
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#717074"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lio/card/payment/ui/Appearance;->ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

    .line 52
    const-string v0, "#f5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    .line 54
    sget v0, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR:I

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    .line 55
    sget v0, Lio/card/payment/ui/Appearance;->PAL_BLUE_COLOR_OPACITY_66:I

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_FOCUS_COLOR:I

    .line 56
    sget v0, Lio/card/payment/ui/Appearance;->PAY_BLUE_COLOR:I

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_PRESSED_COLOR:I

    .line 57
    const-string v0, "#c5ddeb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_DISABLED_COLOR:I

    .line 59
    const-string v0, "#717074"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    .line 60
    const-string v0, "#aa717074"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_FOCUS_COLOR:I

    .line 61
    const-string v0, "#5a5a5d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_PRESSED_COLOR:I

    .line 62
    const-string v0, "#f5f5f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_DISABLED_COLOR:I

    .line 66
    const-string v0, "#515151"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LIGHT:I

    .line 70
    const-string v0, "#b32317"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    .line 72
    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LIGHT:I

    sput v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    .line 82
    invoke-static {}, Lio/card/payment/ui/Appearance;->typefaceLight()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/card/payment/ui/Appearance;->TYPEFACE_BUTTON:Landroid/graphics/Typeface;

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static buttonBackgroundPrimary(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 92
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_PRESSED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 93
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_DISABLED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundPrimaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundPrimaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    return-object v0
.end method

.method private static buttonBackgroundPrimaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 112
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    sget v1, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_FOCUS_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lio/card/payment/ui/Appearance;->buttonFocused(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static buttonBackgroundPrimaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 108
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_PRIMARY_NORMAL_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lio/card/payment/ui/Appearance;->buttonNormal(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static buttonBackgroundSecondary(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 119
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_PRESSED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_DISABLED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_DISABLED_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 121
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_FOCUSED:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundSecondaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    sget-object v1, Lio/card/payment/ui/Appearance;->BUTTON_STATE_NORMAL:[I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->buttonBackgroundSecondaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    return-object v0
.end method

.method private static buttonBackgroundSecondaryFocused(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 131
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    sget v1, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_FOCUS_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lio/card/payment/ui/Appearance;->buttonFocused(IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static buttonBackgroundSecondaryNormal(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 127
    sget v0, Lio/card/payment/ui/Appearance;->BUTTON_SECONDARY_NORMAL_COLOR:I

    invoke-static {p0}, Lio/card/payment/ui/Appearance;->getFocusBorderWidthPixels(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lio/card/payment/ui/Appearance;->buttonNormal(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static buttonFocused(IIF)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 151
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    .line 153
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 154
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 159
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 160
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 165
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-object v1
.end method

.method private static buttonNormal(IF)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 138
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    .line 139
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 140
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 144
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-object v1
.end method

.method private static getFocusBorderWidthPixels(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 101
    const-string v1, "4dip"

    invoke-static {v1, p0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixels(Ljava/lang/String;Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 104
    return v0
.end method

.method private static typefaceLight()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 170
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
