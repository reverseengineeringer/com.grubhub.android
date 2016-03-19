.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field private A:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private B:Landroid/app/Dialog;

.field private C:Landroid/app/Dialog;

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Landroid/view/View;

.field protected b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/view/View;

.field protected f:Landroid/widget/TextView$OnEditorActionListener;

.field protected g:Landroid/view/View$OnClickListener;

.field protected h:Landroid/widget/AdapterView$OnItemClickListener;

.field private l:Ljava/lang/String;

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private n:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/location/LocationListener;

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/Runnable;

.field private x:Lcom/grubhub/AppBaseLibrary/android/views/b;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->i:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AddressOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->j:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AddressDropdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    .line 115
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    .line 115
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    .line 115
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 710
    .line 711
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    if-eqz p3, :cond_3

    .line 716
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$10;->a:[I

    invoke-virtual {p3}, Lcom/grubhub/AppBaseLibrary/android/order/g;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 725
    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 729
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    .line 734
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 742
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 743
    const v3, 0x7f08039f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 744
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    invoke-direct {v4, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    move-object v1, v2

    .line 748
    :cond_2
    return-object v1

    .line 718
    :pswitch_0
    const v0, 0x7f0800bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :pswitch_1
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 1124
    const/4 v1, 0x0

    .line 1125
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1126
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    if-ne v0, p0, :cond_1

    .line 1128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1137
    :cond_0
    return-object v1

    .line 1130
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1131
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1125
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    .line 616
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    .line 618
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 620
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 622
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 625
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 627
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 631
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 6

    .prologue
    .line 790
    if-eqz p1, :cond_2

    .line 791
    const v0, 0x7f0f00b0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 793
    if-eqz v1, :cond_1

    .line 797
    const/4 v0, 0x0

    .line 798
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 802
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->p()I

    move-result v2

    .line 803
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->q()I

    move-result v3

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->r()I

    move-result v4

    sub-int/2addr v3, v4

    .line 804
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 806
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    .line 807
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 806
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 809
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 810
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 811
    const/16 v5, 0x31

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 812
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->t()I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->q:I

    add-int/2addr v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 814
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->q:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 815
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 816
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 819
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 821
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    if-eqz p3, :cond_1

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1015
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1016
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1032
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1033
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1038
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1039
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$9;

    invoke-direct {v1, p0, p4, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1062
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1063
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 982
    if-eqz p1, :cond_0

    .line 983
    if-eqz p2, :cond_1

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 986
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 987
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 993
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 994
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 995
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setSelectedFilterOption(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 641
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 644
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    .line 645
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->r:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c:Landroid/widget/ImageView;

    .line 646
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    add-int v0, v5, v1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    .line 647
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    .line 644
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setPadding(IIII)V

    .line 650
    :cond_1
    return-void

    .line 641
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 922
    if-nez p2, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v1

    .line 928
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 929
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    .line 930
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 931
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    .line 933
    :goto_3
    if-nez v3, :cond_0

    .line 935
    if-eqz v0, :cond_5

    move v1, v2

    .line 936
    goto :goto_0

    :cond_2
    move v3, v2

    .line 929
    goto :goto_1

    :cond_3
    move v0, v2

    .line 930
    goto :goto_2

    :cond_4
    move v5, v2

    .line 931
    goto :goto_3

    .line 940
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 941
    if-lez v0, :cond_8

    move v4, v1

    .line 942
    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    .line 943
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    .line 946
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 949
    if-nez v4, :cond_0

    .line 951
    if-eqz v5, :cond_6

    if-eqz v3, :cond_0

    .line 953
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    .line 956
    goto :goto_0

    :cond_8
    move v4, v2

    .line 941
    goto :goto_4

    :cond_9
    move v3, v2

    .line 942
    goto :goto_5

    :cond_a
    move v0, v2

    .line 943
    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 968
    if-nez p1, :cond_1

    .line 969
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 972
    :goto_0
    return v0

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 759
    if-eqz p1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    .line 766
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 768
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    .line 771
    :cond_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    .line 772
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 773
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 775
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 782
    :cond_1
    :goto_1
    return-void

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Landroid/view/ViewGroup;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1147
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1148
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    if-ne v0, p0, :cond_1

    .line 1150
    const/4 v2, 0x1

    .line 1156
    :cond_0
    :goto_1
    return v2

    .line 1151
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1152
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Landroid/view/ViewGroup;)Z

    move-result v2

    goto :goto_1

    .line 1147
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->i:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 588
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 589
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Z)V

    .line 598
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 602
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    .line 604
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/b;->j_()V

    .line 607
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 596
    goto :goto_0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1074
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1075
    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f()V

    return-void
.end method

.method private getBestLastKnownLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 893
    const/4 v2, 0x0

    .line 894
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 895
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 897
    if-eqz v1, :cond_1

    .line 898
    invoke-direct {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 911
    :cond_0
    :goto_0
    return-object v0

    .line 903
    :cond_1
    if-eqz v0, :cond_2

    .line 904
    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 907
    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 4

    .prologue
    .line 1091
    const/4 v1, 0x0

    .line 1092
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1094
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 1101
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1082
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1083
    return-void
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h()V

    return-void
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getBestLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private setSelectedFilterOption(Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1112
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1115
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    if-eqz p2, :cond_3

    .line 157
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->com_grubhub_AppBaseLibrary_android_views_GHSAddressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 159
    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->q:I

    .line 160
    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->s:Z

    .line 161
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v4, v0

    .line 164
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$13;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$14;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 190
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v2, 0x7f0f00b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 194
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v6, 0x7f0f00b9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 198
    sget-object v6, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY_OR_PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v6, 0x7f0f00af

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    .line 202
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/views/d;

    invoke-direct {v6, v8}, Lcom/grubhub/AppBaseLibrary/android/views/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$15;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/Button;

    aput-object v0, v6, v5

    aput-object v1, v6, v7

    aput-object v2, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->p:Ljava/util/ArrayList;

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v3, 0x7f0f00ad

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->A:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 213
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->A:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 215
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->u:Landroid/location/LocationListener;

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->v:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->w:Ljava/lang/Runnable;

    .line 253
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v3, 0x7f0f00ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setAutoCompleteEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setThrottleEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 271
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setKeyEventCallback(Landroid/view/KeyEvent$Callback;)V

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->r:I

    .line 290
    if-lez v4, :cond_0

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingLeft()I

    move-result v0

    .line 294
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingTop()I

    move-result v3

    .line 295
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingRight()I

    move-result v6

    .line 296
    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getPaddingBottom()I

    move-result v7

    .line 297
    iget-object v8, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v8, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setBackgroundResource(I)V

    .line 298
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v4, v0, v3, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setPadding(IIII)V

    .line 301
    :cond_0
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$3;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->d:Landroid/widget/ImageView;

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-nez v0, :cond_1

    .line 313
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setSelectedFilterOption(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 318
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090217

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    .line 319
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    const v3, 0x7f030029

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 320
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 322
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    const v3, 0x7f0f00b4

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 323
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090217

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    const v3, 0x7f030028

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 338
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$5;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 347
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    const v3, 0x7f0f00b2

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 348
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    const v3, 0x7f0f00b1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 371
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$7;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->s:Z

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    const v3, 0x7f0f00b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    const v0, 0x7f020080

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 391
    :cond_2
    return-void

    :cond_3
    move v4, v5

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 459
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 461
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setSelectedFilterOption(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 464
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    .line 470
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 471
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 473
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 483
    :goto_2
    if-eqz p5, :cond_0

    .line 484
    if-eq v1, v2, :cond_3

    .line 486
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(I)V

    .line 492
    :cond_0
    :goto_3
    return-void

    .line 459
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 471
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 489
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Z)V

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/d;

    .line 560
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/d;->a(Ljava/util/ArrayList;)V

    .line 563
    if-eqz p2, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/d;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 565
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/d;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 566
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/d;->a(Lcom/grubhub/AppBaseLibrary/android/views/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 568
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 571
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 573
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setLocationLoading(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 412
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->u:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 413
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 421
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    .line 422
    iput-boolean v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    .line 424
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b()V

    .line 427
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 428
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->o:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setSelectedFilterOption(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 432
    invoke-direct {p0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Z)V

    .line 434
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 435
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    invoke-direct {p0, v2, v3, v6, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 437
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g()V

    .line 438
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->clearFocus()V

    .line 440
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/b;->i_()V

    .line 442
    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/b;->h()V

    .line 446
    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 827
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 828
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 829
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 830
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 832
    :goto_0
    if-nez v3, :cond_0

    if-eqz v4, :cond_7

    .line 833
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getBestLastKnownLocation()Landroid/location/Location;

    move-result-object v4

    .line 834
    if-eqz v4, :cond_3

    .line 835
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best last known location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getSelectedFilterOption()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 838
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 839
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 841
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    if-eqz v0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface/range {v1 .. v6}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 868
    :cond_1
    :goto_1
    return-void

    .line 830
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 845
    :cond_3
    if-nez v3, :cond_4

    if-eqz v1, :cond_6

    .line 846
    :cond_4
    if-eqz v1, :cond_5

    const-string v1, "network"

    .line 847
    :goto_2
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->u:Landroid/location/LocationListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 851
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->setLocationLoading(Z)V

    .line 853
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->w:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 846
    :cond_5
    const-string v1, "gps"

    goto :goto_2

    .line 859
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->B:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/app/Dialog;)V

    .line 861
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    goto :goto_1

    .line 864
    :cond_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->C:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/app/Dialog;)V

    .line 866
    const-string v0, "LOCATION_SERVICES_PROMPT"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 656
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 664
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 667
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b()V

    .line 668
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 672
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    if-eqz v0, :cond_0

    .line 673
    invoke-static {p2}, Landroid/support/v4/view/r;->b(Landroid/view/KeyEvent;)V

    .line 674
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 682
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->t:Z

    if-eqz v0, :cond_0

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Z)V

    .line 684
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 692
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 695
    if-nez p1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b()V

    .line 698
    :cond_0
    return-void
.end method

.method public setAddressBarListener(Lcom/grubhub/AppBaseLibrary/android/views/b;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->x:Lcom/grubhub/AppBaseLibrary/android/views/b;

    .line 501
    return-void
.end method

.method public setAddressDropdownContainer(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 509
    if-eqz p1, :cond_1

    .line 512
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/view/ViewGroup;)Ljava/lang/Integer;

    move-result-object v0

    .line 513
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 515
    if-eqz v0, :cond_2

    .line 518
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 522
    :cond_0
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->y:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 532
    :cond_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setHideView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->D:Ljava/lang/ref/WeakReference;

    .line 547
    return-void
.end method

.method public setLocationLoading(Z)V
    .locals 2

    .prologue
    .line 876
    if-eqz p1, :cond_0

    .line 877
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->A:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    .line 878
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 883
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->A:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 881
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
