.class Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
.super Ljava/lang/Object;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupInfo"
.end annotation


# instance fields
.field animating:Z

.field dummyHeight:I

.field dummyView:Lcom/coui/appcompat/widget/COUIExpandableListView$DummyView;

.field expanding:Z

.field isLastChild:Z

.field totalHeight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->animating:Z

    .line 183
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->expanding:Z

    .line 184
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->isLastChild:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;->dummyHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$1;

    .line 181
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;-><init>()V

    return-void
.end method
