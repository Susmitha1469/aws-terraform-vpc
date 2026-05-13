<img src="https://cdn.prod.website-files.com/677c400686e724409a5a7409/6790ad949cf622dc8dcd9fe4_nextwork-logo-leather.svg" alt="NextWork" width="300" />

# Host a Website on Amazon S3

**Project Link:** [View Project](http://learn.nextwork.org/projects/aws-host-a-website-on-s3)

**Author:** Susmitha Chowdary  
**Email:** susmithachowdary14@gmail.com

---

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_5d4474f9)

---

## Introducing Today's Project!

### Project overview

I'm doing this project to learn more about AWS.

### Tools and concepts

Services I used were Amazon S3. Key concepts I learnt include bucket polices, static website files, index.html, bucket endpoints URLs and ACLs and how they control access to our bucket objects.

### Time, challenges, and wins

This project took me approximately 2 days to complete. The most challenging part was understanding the code. It was most rewarding to complete this project.

---

## How I Set Up an S3 Bucket

### What I did in this step

In this step, I will open an S3 bucket to uploas my website content.

### How long it took to create the bucket

Creating an S3 bucket took me 5 seconds.

### Region selection

The Region I picked for my S3 bucket was ohio us-east-2 because its the clostest one to me. 

### Understanding bucket name uniqueness

S3 bucket names are globally unique! This means my bucket can be only used by me (unless i delete the bucket)

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_ba6d42ad)

---

## Upload Website Files to S3

### What I did in this step

In this step, I will download HTML file and zile file that sets up my website.

### Files I uploaded

I uploaded two files to my S3 bucket - they were... index.html, NextWork - Everyone...love_files.zip

### How the files work together

Both files are necessary for this project as... index.html doesn't illustrate the content of the website as it needs images to be provided seperately.

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_a265af88)

---

## Static Website Hosting on S3

### What I did in this step

In this step, I will make my website available to the world this is important because the uploaded files stay as files and not turn into website.

### Understanding website hosting

Website hosting means storing my html file on web server so that it is accessable online.

### How I enabled website hosting

To enable website hosting with my S3 bucket, I enabled static website hosting and choose hot a static website option and also labeled my index.html as index document.

### Access Control Lists (ACLs)

An ACL is a set of rules that decides who can get access to a resource.

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_c22c54c0)

---

## Bucket Endpoints

### Understanding bucket endpoint URLs

Once static website is enabled, S3 produces a bucket endpoint URL, which is the website your hosting

### What I saw when I tested the endpoint

When I first visited the bucket endpoint URL, I saw an error. The reason for this error was because the files that i uploaded are still private

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_22ce4daf)

---

## Success!

### What I did in this step

In this step, I will make my website files in s3 publicly accessible because this will enable us to view contents of my website.

### How I resolved the 403 error

To resolve this 403 Forbidden error, I updated the ACLs in the s3 too, using that we made out website files public.

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_5d4474f9)

---

## Bucket Policies

### What I did in this extension

In this project extension I'm about to set up bucket policy I'm doing this so that it stops people from deleting my index.html file. 

### Understanding bucket policies

An alternative to ACLs are bucket policies, which are the policies that stops everyone from deleting specific files in my bucket.The benefit of using bucket policies is I can now control more than just who can see/access an object. With bucket policies, we can manage: Who can delete the object, Who can change the object, Who can upload new objects to your bucket, And much, much more! while ACLs are useful for applyinf premissions for the resorces.

![Image](http://learn.nextwork.org/elated_red_curious_lizard/uploads/aws-host-a-website-on-s3_sm2sm2sm)

### What my bucket policy does

My bucket policy denies everyone from deleting my resources which includes myself. I tested this by applying a policy and saw an access denied message while trying to delete my html file.

---

---
