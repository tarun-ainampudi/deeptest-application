.class public Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;
.super Lcom/coui/appcompat/preference/COUISwitchPreference;
.source "COUISwitchWithDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    sget v0, Lcoui/support/appcompat/R$attr;->couiSwitchWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    .line 32
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    return-object v0
.end method

.method static synthetic access$101(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    .line 32
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->onClick()V

    return-void
.end method


# virtual methods
.method public getOnMainLayoutClickListener()Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 88
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 102
    :cond_0
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->switch_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mSwitchLayout:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 113
    :cond_1
    return-void
.end method

.method public setOnMainLayoutListener(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    .line 121
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->mClickListener:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    .line 122
    return-void
.end method
