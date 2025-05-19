.class public Lcom/coui/appcompat/widget/COUIExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIExpandableListView$EndAnimatorListener;,
        Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;,
        Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;,
        Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;,
        Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIExpandableListView"


# instance fields
.field private adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

.field private mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView;

    .line 45
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUIExpandableListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView;->originCollapseGroup(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$1;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 93
    return-void
.end method

.method private originCollapseGroup(I)V
    .locals 0
    .param p1, "groupPos"    # I

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 176
    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->access$300(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)Z

    move-result v0

    .line 168
    .local v0, "collapse":Z
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->notifyDataSetChanged()V

    .line 171
    :cond_0
    return v0
.end method

.method public expandGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 148
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->access$100(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)Z

    move-result v0

    .line 149
    .local v0, "expand":Z
    const/4 v1, 0x0

    .line 150
    .local v1, "success":Z
    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v1

    .line 152
    if-nez v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-static {v2, p1}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;->access$200(Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;I)V

    .line 156
    :cond_0
    return v1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 136
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/coui/appcompat/widget/COUIExpandableListView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    .line 137
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->adapter:Lcom/coui/appcompat/widget/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 138
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 113
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot set childDivider."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 105
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot set divider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 121
    if-nez p1, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot set groupIndicator."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 97
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot set wrap_content"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 129
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView;->mGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 130
    return-void
.end method
