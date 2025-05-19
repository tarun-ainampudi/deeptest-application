.class public Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "COUIListPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "PreferenceDialogFragment.icon"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "PreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_SUMMARIES:Ljava/lang/String; = "PreferenceDialogFragment.summaries"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "PreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;-><init>()V

    .line 64
    .local v0, "fragment":Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-nez p1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 83
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    goto :goto_2

    .line 93
    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 94
    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 97
    const-string v0, "PreferenceDialogFragment.summaries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    .line 98
    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 100
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setSummaries([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object v1

    .line 112
    .local v1, "builder":Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 113
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->createDialog()Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    .line 114
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->getBottomSheetDialog()Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "PreferenceDialogFragment.summaries"

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method
