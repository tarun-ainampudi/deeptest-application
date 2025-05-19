.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupInfo"
.end annotation


# instance fields
.field animating:Z

.field dummyHeight:I

.field dummyView:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$DummyView;

.field expanding:Z

.field totalHeight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 1388
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    .line 1389
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->totalHeight:I

    .line 1397
    iput v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$1;

    .line 1386
    invoke-direct {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;-><init>()V

    return-void
.end method
