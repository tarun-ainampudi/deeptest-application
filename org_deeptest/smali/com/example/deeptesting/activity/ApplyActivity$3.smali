.class Lcom/example/deeptesting/activity/ApplyActivity$3;
.super Ljava/lang/Object;
.source "ApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/ApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/ApplyActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/ApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 82
    iput-object p1, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->access$100(Lcom/example/deeptesting/activity/ApplyActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 86
    .local v0, "appBarLayoutHeight":I
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/ApplyActivity;->access$200(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/ApplyActivity;->access$200(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    .line 87
    invoke-static {v3}, Lcom/example/deeptesting/activity/ApplyActivity;->access$200(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/example/deeptesting/activity/ApplyActivity$3;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v4}, Lcom/example/deeptesting/activity/ApplyActivity;->access$200(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    .line 86
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 88
    return-void
.end method
