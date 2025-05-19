.class public Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "COUIActivityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mDialog:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "resourceId":I
    const/4 v1, -0x1

    .line 247
    .local v1, "statusBarHeight":I
    if-lez v0, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method private getStatusBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 213
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 214
    .local v0, "statusHeight":I
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$drawable;->coui_list_statusbar_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;-><init>()V

    .line 69
    .local v0, "fragment":Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 70
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 82
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    .line 83
    new-instance v0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$style;->Theme_COUI_ActivityDialog:I

    invoke-direct {v0, v7, v1, v2}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;I)V

    move-object v8, v0

    .line 93
    .local v8, "dialog":Landroidx/appcompat/app/AppCompatDialog;
    iput-object v8, v7, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 94
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "decorView":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 98
    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_dialog_fragment_navigation_bar_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 102
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 103
    .local v3, "flag":I
    invoke-static {}, Lcom/coui/appcompat/util/COUIVersionUtil;->getOSVersionCode()I

    move-result v4

    .line 104
    .local v4, "versionCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$bool;->list_status_white_enabled:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 106
    .local v5, "white":Z
    const/4 v6, 0x6

    if-ge v4, v6, :cond_1

    if-nez v4, :cond_5

    .line 107
    :cond_1
    const/high16 v6, -0x80000000

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    and-int/lit16 v3, v3, -0x2001

    .line 110
    and-int/lit8 v3, v3, -0x11

    goto :goto_0

    .line 112
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v6, v9, :cond_4

    .line 113
    if-nez v5, :cond_3

    .line 114
    or-int/lit16 v3, v3, 0x2000

    goto :goto_0

    .line 116
    :cond_3
    or-int/lit16 v3, v3, 0x100

    goto :goto_0

    .line 119
    :cond_4
    or-int/lit8 v3, v3, 0x10

    .line 122
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    .end local v0    # "window":Landroid/view/Window;
    .end local v2    # "decorView":Landroid/view/View;
    .end local v3    # "flag":I
    .end local v4    # "versionCode":I
    .end local v5    # "white":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$layout;->coui_preference_listview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 127
    .local v9, "dialogView":Landroid/view/View;
    sget v0, Lcoui/support/appcompat/R$id;->toolbar:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 130
    .local v10, "toolbar":Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v10}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;

    invoke-direct {v0, v7}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)V

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget v0, Lcoui/support/appcompat/R$id;->abl:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout;

    .line 140
    .local v11, "appbarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference_listview:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ListView;

    .line 143
    .local v12, "list":Landroid/widget/ListView;
    sget v0, Lcoui/support/appcompat/R$id;->divider_line:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 144
    .local v13, "mDividerLine":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_6
    const/4 v14, 0x1

    invoke-static {v12, v14}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 149
    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getStatusBarView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v15

    .line 150
    .local v15, "place":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v15, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;

    invoke-direct {v0, v7, v11, v12}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ListView;)V

    invoke-virtual {v11, v0}, Lcom/google/android/material/appbar/AppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 162
    new-instance v16, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->coui_preference_listview_item:I

    sget v4, Lcoui/support/appcompat/R$id;->checkedtextview:I

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 190
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    new-instance v1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;

    invoke-direct {v1, v7, v12, v8}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$5;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/widget/ListView;Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    invoke-virtual {v12, v14}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 207
    invoke-virtual {v8, v9}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 208
    return-object v8
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 259
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    .line 260
    .local v0, "preference":Landroidx/preference/ListPreference;
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
