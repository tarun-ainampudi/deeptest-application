.class public Lcom/coui/appcompat/widget/COUISearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "COUISearchView.java"


# instance fields
.field private mIsHintTextSize:Z

.field private mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    .line 27
    return-void
.end method

.method private changeTextSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 57
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_searchview_text_hint_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    goto :goto_0

    .line 59
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 61
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_searchview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 62
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISearchView;->mIsHintTextSize:Z

    .line 64
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    const-string v0, "androidx.appcompat.widget.SearchView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "aClass":Ljava/lang/Class;
    const-string v1, "mSearchSrcTextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 39
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 41
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 42
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    return-object v1

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method
